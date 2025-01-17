// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../mall_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MallDetailResponseImpl _$$MallDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$MallDetailResponseImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      location: json['location'] as String?,
      address: json['address'] as String?,
      locationCode: json['locationCode'],
      city: json['city'] as String?,
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      mallPicture: json['mallPicture'] as String?,
      time: json['time'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$MallDetailResponseImplToJson(
        _$MallDetailResponseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'address': instance.address,
      'locationCode': instance.locationCode,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'mallPicture': instance.mallPicture,
      'time': instance.time,
      'phoneNumber': instance.phoneNumber,
      'shops': instance.shops?.map((e) => e.toJson()).toList(),
    };
