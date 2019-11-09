import 'dart:async';

import 'package:piggy_flutter/models/api_response.dart';
import 'package:piggy_flutter/models/user.dart';
import 'package:piggy_flutter/repositories/piggy_api_client.dart';
import 'package:piggy_flutter/services/app_service_base.dart';
import 'package:piggy_flutter/utils/uidata.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginInput {
  String tenancyName, usernameOrEmailAddress, password;

  LoginInput({this.tenancyName, this.usernameOrEmailAddress, this.password});
}

class AuthService extends AppServiceBase {
  PiggyApiClient _apiClient = new PiggyApiClient();

  Future<bool> onLogout() async {
    final prefs = await SharedPreferences.getInstance();
    return await prefs.remove(UIData.authToken);
  }

  Future<AjaxResponse<dynamic>> authenticate(LoginInput input) async {
    var isTenantAvailableResult =
        await _apiClient.isTenantAvailable(input.tenancyName);

    if (isTenantAvailableResult.state == 1) {
      var result = await rest.postAsync('TokenAuth/Authenticate', {
        "usernameOrEmailAddress": input.usernameOrEmailAddress,
        "password": input.password
      });

      return result;
    }

    // TODO: handle invalid tenant cases
    return null;
  }

  Future<User> getCurrentLoginInformation() async {
    var result = await rest.postAsync(
        'services/app/session/GetCurrentLoginInformations', null);

    if (result.success) {
      return User.fromJson(result.result['user']);
    }

    return null;
  }
}
