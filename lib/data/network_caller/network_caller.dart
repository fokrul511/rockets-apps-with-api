import 'dart:convert';
import 'dart:math';

import 'package:http/http.dart';
import 'package:rocket_apps/data/models/network_response.dart';

class NetworkCaller {
  static Future<NetworkResponse> getRequest({required String url}) async {
    final Response response = await get(Uri.parse(url));
    print(response.statusCode);
    print(response.body);

    try {
      if (response.statusCode == 200) {
        log(response.statusCode);

        final decodeData = jsonDecode(response.body);
        return NetworkResponse(
          responseCode: response.statusCode,
          isSuccess: true,
          responseData: decodeData,
        );
      } else if (response.statusCode == 401) {
        ///Todo : handle 401
        return NetworkResponse(
          responseCode: response.statusCode,
          isSuccess: false,
        );
      } else {
        return NetworkResponse(
          responseCode: response.statusCode,
          isSuccess: false,
        );
      }
    } catch (e) {
      return NetworkResponse(
        responseCode: -1,
        isSuccess: false,
        errorMessage: e.toString(),
      );
    }
  }
}
