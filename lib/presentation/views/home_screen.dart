import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocket_apps/data/models/rocket_list_model.dart';
import 'package:rocket_apps/presentation/state_holders/home_screen_controller.dart';
import 'package:rocket_apps/presentation/views/rocket_detials_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<RocketsListModel> filteredRockets = [];

  @override
  void initState() {
    super.initState();
    Get.find<HomeScreenController>().fetchRockets();
    _searchController.addListener(_onSearchChanged); // Add search listener
  }

  void _onSearchChanged() {
    final query = _searchController.text.toLowerCase();
    final homeScreenController = Get.find<HomeScreenController>();

    setState(() {
      filteredRockets = homeScreenController.rocketsList
          .where((rocket) =>
              rocket.name != null && rocket.name!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rocket Launcher"),
      ),
      body: RefreshIndicator(
        onRefresh: () async {
          Get.find<HomeScreenController>().fetchRockets();
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: TextFormField(
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: "Enter Rocket Name",
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: IconButton(
                        onPressed: () {
                          _onSearchChanged(); // Trigger search on button press
                        },
                        icon: const Icon(Icons.search_rounded),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.7,
                  child: GetBuilder<HomeScreenController>(
                      builder: (homeScreenController) {
                    if (homeScreenController.inProgress) {
                      return const Center(
                          child: SizedBox(child: CircularProgressIndicator()));
                    }

                    // If search query exists, use filtered list, else show full list
                    final rocketList = _searchController.text.isNotEmpty
                        ? filteredRockets
                        : homeScreenController.rocketsList;

                    return buildListView(rocketList);
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  ListView buildListView(List<RocketsListModel> rocketList) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: rocketList.length,
      itemBuilder: (context, index) {
        var imageUrl = rocketList[index].flickrImages != null &&
                rocketList[index].flickrImages!.isNotEmpty
            ? rocketList[index].flickrImages![0]
            : 'https://via.placeholder.com/100';

        return Card(
          child: ListTile(
            onTap: () {
              // Navigate to the details screen, passing the rocket data
              Get.to(() => RocketDetailsScreen(rocket: rocketList[index]));
            },
            title: Text(rocketList[index].name ?? 'Unknown Rocket'),
            subtitle: Text(rocketList[index].firstFlight?.toString() ?? 'N/A'),
            leading: SizedBox(
              height: 100,
              width: 100,
              child: Image.network(
                imageUrl,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(Icons.error, size: 50);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
