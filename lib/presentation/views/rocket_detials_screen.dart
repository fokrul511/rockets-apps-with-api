import 'package:flutter/material.dart';
import 'package:rocket_apps/data/models/rocket_list_model.dart';

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
              rocket.flickrImages != null && rocket.flickrImages!.isNotEmpty
                  ? Image.network(rocket.flickrImages![0])
                  : const SizedBox(
                      height: 100, child: Icon(Icons.image_not_supported)),
              Text(
                rocket.name ?? '',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text('First Flight: ${rocket.firstFlight ?? ''}'),
              const SizedBox(height: 8),
              Text('Country: ${rocket.country ?? ''}'),
              const SizedBox(height: 8),
              Text('Company: ${rocket.company ?? ''}'),
              const SizedBox(height: 8),
              Text('Description: ${rocket.description ?? ''}'),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
