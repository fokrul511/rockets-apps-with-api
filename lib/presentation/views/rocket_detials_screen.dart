import 'package:flutter/material.dart';
import 'package:rocket_apps/data/models/rocket_list_model.dart';
import 'package:rocket_apps/presentation/widgets/details_screen_slider.dart';

class RocketDetailsScreen extends StatelessWidget {
  final RocketsListModel rocket;

  const RocketDetailsScreen({super.key, required this.rocket});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(rocket.name ?? 'Rocket Details'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              buildImageCarousel(rocket),
              const SizedBox(height: 16),
              Text(
                rocket.name ?? 'Unknown Rocket',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              Text('First Flight: ${rocket.firstFlight ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              Text('Country: ${rocket.country ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              Text('Company: ${rocket.company ?? 'Unknown'}',
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 8),
              Text('Description: ${rocket.description ?? 'No description available'}',
                  style: const TextStyle(fontSize: 16)),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }


}
