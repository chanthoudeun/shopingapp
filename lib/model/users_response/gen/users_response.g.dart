// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../users_response.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UsersResponseImplAdapter extends TypeAdapter<_$UsersResponseImpl> {
  @override
  final int typeId = 0;

  @override
  _$UsersResponseImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$UsersResponseImpl(
      token: fields[0] as String?,
      message: fields[1] as String?,
      username: fields[2] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, _$UsersResponseImpl obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.token)
      ..writeByte(1)
      ..write(obj.message)
      ..writeByte(2)
      ..write(obj.username);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UsersResponseImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UsersResponseImpl _$$UsersResponseImplFromJson(Map<String, dynamic> json) =>
    _$UsersResponseImpl(
      token: json['token'] as String?,
      message: json['message'] as String?,
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$UsersResponseImplToJson(_$UsersResponseImpl instance) =>
    <String, dynamic>{
      'token': instance.token,
      'message': instance.message,
      'username': instance.username,
    };
