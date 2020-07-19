import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:job_finder/domain/auth/user.dart';
import 'package:job_finder/domain/auth/value_objects.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel implements _$UserModel {
  const UserModel._();
  const factory UserModel({
    @required String id,
    @required String username,
    @required String email,
  }) = _User;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  User toDomain() {
    return User(
      email: email,
      username: username,
      id: UniqueId.fromUniqueString(id),
    );
  }
}
