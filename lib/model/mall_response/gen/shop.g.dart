// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../shop.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: (json['id'] as num?)?.toInt(),
      shopName: json['shopName'] as String?,
      mallId: (json['mallId'] as num?)?.toInt(),
      category: json['category'] as String?,
      floor: json['floor'] as String?,
      imageUrl: json['imageUrl'] as String?,
      offerAvailable: json['offerAvailable'] as bool?,
      newArrival: json['newArrival'] as bool?,
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopName': instance.shopName,
      'mallId': instance.mallId,
      'category': instance.category,
      'floor': instance.floor,
      'imageUrl': instance.imageUrl,
      'offerAvailable': instance.offerAvailable,
      'newArrival': instance.newArrival,
    };
