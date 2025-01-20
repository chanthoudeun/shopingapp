// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../shop_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ShopDetailImpl _$$ShopDetailImplFromJson(Map<String, dynamic> json) =>
    _$ShopDetailImpl(
      id: (json['id'] as num?)?.toInt(),
      shopId: (json['shopId'] as num?)?.toInt(),
      name: json['name'] as String?,
      openingStatus: json['openingStatus'] as bool?,
      description: json['description'] as String?,
      street: json['street'] as String?,
      mallName: json['mallName'] as String?,
      phone: json['phone'] as String?,
      openTime: json['openTime'] as String?,
      closeTime: json['closeTime'] as String?,
      membershipBenefits: json['membershipBenefits'] as String?,
      offerTitle: json['offerTitle'] as String?,
      offerDescription: json['offerDescription'] as String?,
      offerStartDate: json['offerStartDate'] as String?,
      offerEndDate: json['offerEndDate'] as String?,
      shop: json['shop'],
      shopOffers: json['shopOffers'] as List<dynamic>?,
    );

Map<String, dynamic> _$$ShopDetailImplToJson(_$ShopDetailImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'shopId': instance.shopId,
      'name': instance.name,
      'openingStatus': instance.openingStatus,
      'description': instance.description,
      'street': instance.street,
      'mallName': instance.mallName,
      'phone': instance.phone,
      'openTime': instance.openTime,
      'closeTime': instance.closeTime,
      'membershipBenefits': instance.membershipBenefits,
      'offerTitle': instance.offerTitle,
      'offerDescription': instance.offerDescription,
      'offerStartDate': instance.offerStartDate,
      'offerEndDate': instance.offerEndDate,
      'shop': instance.shop,
      'shopOffers': instance.shopOffers,
    };
