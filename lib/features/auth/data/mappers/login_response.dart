import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  factory LoginResponse({
    required String refreshToken,
    required String token,
    required int tokenExpires,
    required UserResponse user,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserResponse with _$UserResponse {
  factory UserResponse({
    required int id,
    required String email,
    required String provider,
    required String firstName,
    required String lastName,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Role role,
    required Role status,
    required String entity,
    String? socialId,
    DateTime? deletedAt,
    String? photo,
  }) = _UserResponse;
  factory UserResponse.fromJson(Map<String, dynamic> json) =>
      _$UserResponseFromJson(json);
}

@freezed
class Role with _$Role {
  factory Role({
    required int id,
    required String name,
    required String entity,
  }) = _Role;
  factory Role.fromJson(Map<String, dynamic> json) => _$RoleFromJson(json);
}
