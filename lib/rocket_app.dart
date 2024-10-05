import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocket_apps/controller_blinder.dart';
import 'package:rocket_apps/presentation/views/home_screen.dart';

class RocketApps extends StatefulWidget {
  const RocketApps({super.key});

  static GlobalKey<NavigatorState> naviagtionKey = GlobalKey<NavigatorState>();

  @override
  State<RocketApps> createState() => _RocketAppsState();
}

class _RocketAppsState extends State<RocketApps> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      navigatorKey: RocketApps.naviagtionKey,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        brightness: Brightness.dark,
      ),
      home: const HomeScreen(),
    );
  }
}
