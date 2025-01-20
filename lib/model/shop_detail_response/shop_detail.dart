import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/shop_detail.freezed.dart';
part 'gen/shop_detail.g.dart';

@unfreezed
class ShopDetail with _$ShopDetail {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ShopDetail({
    int? id,
    int? shopId,
    String? name,
    bool? openingStatus,
    String? description,
    String? street,
    String? mallName,
    String? phone,
    String? openTime,
    String? closeTime,
    String? membershipBenefits,
    String? offerTitle,
    String? offerDescription,
    String? offerStartDate,
    String? offerEndDate,
    dynamic shop,
    List<dynamic>? shopOffers,
  }) = _ShopDetail;

  factory ShopDetail.fromJson(Map<String, dynamic> json) =>
      _$ShopDetailFromJson(json);
}
