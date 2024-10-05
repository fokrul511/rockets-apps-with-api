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
  @override
  void initState() {
    super.initState();
    Get.find<HomeScreenController>().fetchRockets();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Rocket Launcher"),
      ),
      body: GetBuilder<HomeScreenController>(builder: (homeScreenController) {
        if (homeScreenController.inProgress) {
          return const Center(
              child: SizedBox(height: 120, child: CircularProgressIndicator()));
        }
        return buildListView(homeScreenController.rocketsList);
      }),
    );
  }

  ListView buildListView(List<RocketsListModel> rocketList) {
    return ListView.builder(
      itemCount: rocketList.length,
      itemBuilder: (context, index) {
        var imageUrl = rocketList[index].flickrImages != null && rocketList[index].flickrImages!.isNotEmpty
            ? rocketList[index].flickrImages![0]
            : 'https://via.placeholder.com/100';

        return Card(
          child: ListTile(
            onTap: () {
              // Navigate to the details screen, passing the rocket data
              Get.to(() => RocketDetailsScreen(rocket: rocketList[index]));
            },
            title: Text("${rocketList[index].name}"),
            subtitle: Text(rocketList[index].firstFlight.toString()),
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
