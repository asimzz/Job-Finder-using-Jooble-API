import 'package:freezed_annotation/freezed_annotation.dart';

import 'value_objects.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    @required UniqueId id,
    @required String username,
    @required String email,
  }) = _User;
}
