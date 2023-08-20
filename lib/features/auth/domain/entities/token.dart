import 'package:freezed_annotation/freezed_annotation.dart';
part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  factory Token({
    required String accessToken,
    required String refreshToken,
    required int tokenExpires,
  }) = _Token;
  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);
}
