import 'dart:convert';

import 'package:http/http.dart';
import 'package:my_message_reels_frontend/services/app_service.dart';
import 'package:my_message_reels_frontend/shared/types/dto/auth_login.dto.dart';
import 'package:my_message_reels_frontend/shared/types/dto/auth_login_response.dto.dart';

class AuthService {
  static Future<AuthLoginResponseDto> login(AuthLoginDto req) async {
    final url = Uri.parse('https://${AppService.apiUrl}/api/auth/login');
    final response =
        await post(url, body: {'email': req.email, 'password': req.password});
    final dto = AuthLoginResponseDto.fromJson(jsonDecode(response.body));
    print(dto.accessToken);
    return dto;
  }

  // Future<User?> signUp(String email, String password) async {
  //   final response = await _client.auth.signUp(
  //     email: email,
  //     password: password,
  //   );
  //   return response.user;
  // }

  // Future<void> signOut() async {
  //   await _client.auth.signOut();
  // }

  // User? get currentUser => _client.auth.currentUser;
}
