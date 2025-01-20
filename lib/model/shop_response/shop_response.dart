import 'package:freezed_annotation/freezed_annotation.dart';

part 'gen/shop_response.freezed.dart';
part 'gen/shop_response.g.dart';

@unfreezed
class ShopResponse with _$ShopResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ShopResponse({
    int? id,
    String? shopName,
    int? mallId,
    String? category,
    String? floor,
    String? imageUrl,
    bool? offerAvailable,
    bool? newArrival,
    String? description,
    String? membershipBenefit,
    String? shopOffer,
    String? profilePicture,
  }) = _ShopResponse;

  factory ShopResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopResponseFromJson(json);
}
