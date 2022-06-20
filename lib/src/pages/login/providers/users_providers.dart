import 'package:app_delivery/src/pages/login/environment/environment.dart';
import 'package:get/get.dart';

import '../models/user.dart';

class UsersProviders extends GetConnect {
  String url = Environment.API_URL + "api/users";

  Future<Response> create(User user) async {
    Response response = await post('$url/create', user.toJson(),
        headers: {'Content-Type': 'application/json'
        }
      );
    return response;
  }
}
