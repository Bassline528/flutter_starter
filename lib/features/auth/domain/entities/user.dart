import 'package:freezed_annotation/freezed_annotation.dart';
part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    required int id,
    required String email,
    String? socialId,
    required String firstName,
    required String lastName,
    String? photo,
  }) = _User;
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
