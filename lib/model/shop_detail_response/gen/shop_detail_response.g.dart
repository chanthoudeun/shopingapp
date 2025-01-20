// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../shop_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopDetailResponseImpl _$$ShopDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ShopDetailResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      category: json['category'] as String?,
      floor: json['floor'] as String?,
      imageUrl: json['imageUrl'] as String?,
      offerAvailable: json['offerAvailable'] as bool?,
      newArrival: json['newArrival'] as bool?,
      shopDetail: (json['shopDetail'] as List<dynamic>?)
          ?.map((e) => ShopDetail.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopDetailResponseImplToJson(
        _$ShopDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'category': instance.category,
      'floor': instance.floor,
      'imageUrl': instance.imageUrl,
      'offerAvailable': instance.offerAvailable,
      'newArrival': instance.newArrival,
      'shopDetail': instance.shopDetail?.map((e) => e.toJson()).toList(),
    };
