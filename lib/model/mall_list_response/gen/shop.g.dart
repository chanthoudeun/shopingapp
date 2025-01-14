// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: (json['id'] as num?)?.toInt(),
      shopName: json['shopName'] as String?,
      mallId: (json['mallId'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopName': instance.shopName,
      'mallId': instance.mallId,
    };
