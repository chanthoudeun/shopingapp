import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/shop.freezed.dart';
part 'gen/shop.g.dart';

@unfreezed
class Shop with _$Shop {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory Shop({
    int? id,
    String? shopName,
    int? mallId,
    String? category,
    dynamic mallName,
    String? floor,
    String? imageUrl,
    bool? offerAvailable,
    bool? newArrival,
    String? description,
    String? membershipBenefit,
    String? shopOffer,
    String? profilePicture,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}
