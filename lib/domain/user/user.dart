import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

part 'user.g.dart';

///model for user
@freezed
class User with _$User {
  ///pass name to display user
  const factory User({
    required String name,
  }) = _User;

  ///standard method to serialization User
  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
