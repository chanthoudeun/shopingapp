import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'gen/users_response.freezed.dart';
part 'gen/users_response.g.dart';

@unfreezed
class UsersResponse with _$UsersResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  @HiveType(typeId: 0)
  factory UsersResponse({
    @HiveField(0) String? token,
    @HiveField(1) String? message,
    @HiveField(2) String? username,
  }) = _UsersResponse;

  factory UsersResponse.fromJson(Map<String, dynamic> json) =>
      _$UsersResponseFromJson(json);
}
