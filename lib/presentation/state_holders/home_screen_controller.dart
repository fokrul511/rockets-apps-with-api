import 'package:get/get.dart';
import 'package:rocket_apps/data/models/network_response.dart';
import 'package:rocket_apps/data/models/rocket_list_model.dart';
import 'package:rocket_apps/data/network_caller/network_caller.dart';
import 'package:rocket_apps/data/utility/urls.dart';

class HomeScreenController extends GetxController {
  bool _inProgress = false;
  String _errorMessage = '';
  List<RocketsListModel> _rocketsList = [];

  bool get inProgress => _inProgress;

  List<RocketsListModel> get rocketsList => _rocketsList; // Specify the type

  String get errorMessage => _errorMessage;

  Future<bool> fetchRockets() async {
    _inProgress = true;
    update();

    final NetworkResponse response =
        await NetworkCaller.getRequest(url: Urls.rockets);

    if (response.isSuccess) {
      _rocketsList = (response.responseData as List)
          .map((item) => RocketsListModel.fromJson(item))
          .toList();
      _errorMessage = '';
      _errorMessage = response.errorMessage ?? 'An unknown error occurred.';
    }

    _inProgress = false;
    update();
    return response.isSuccess;
  }
}
