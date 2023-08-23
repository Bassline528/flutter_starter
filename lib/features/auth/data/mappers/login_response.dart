import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required UserResponse user,
    required Tokens tokens,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserResponse with _$UserResponse {
  factory UserResponse({
    required String id,
    required String email,
    required String username,
    required String firstName,
    required String lastName,
    required bool isActive,
    required List<String> roles,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class Tokens with _$Tokens {
  factory Tokens({
    required String accessToken,
    required String refreshToken,
  }) = _Tokens;
  factory Tokens.fromJson(Map<String, dynamic> json) => _$TokensFromJson(json);
}
