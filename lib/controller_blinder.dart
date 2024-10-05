import 'package:get/get.dart';
import 'package:rocket_apps/presentation/state_holders/home_screen_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
    Get.put(HomeScreenController());
  }
}
