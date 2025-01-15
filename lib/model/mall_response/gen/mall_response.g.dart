// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../mall_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MallResponseImpl _$$MallResponseImplFromJson(Map<String, dynamic> json) =>
    _$MallResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      mallName: json['mallName'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      locationCode: json['locationCode'],
      city: json['city'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MallResponseImplToJson(_$MallResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'mallName': instance.mallName,
      'location': instance.location,
      'address': instance.address,
      'locationCode': instance.locationCode,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'shops': instance.shops?.map((e) => e.toJson()).toList(),
    };
