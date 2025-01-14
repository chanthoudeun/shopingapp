// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../mall_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MallListResponseImpl _$$MallListResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MallListResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      mallName: json['mallName'] as String?,
      location: json['location'] as String?,
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MallListResponseImplToJson(
        _$MallListResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mallName': instance.mallName,
      'location': instance.location,
      'shops': instance.shops?.map((e) => e.toJson()).toList(),
    };
