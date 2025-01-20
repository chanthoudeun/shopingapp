import 'package:freezed_annotation/freezed_annotation.dart';

import 'shop_detail.dart';

part 'gen/shop_detail_response.freezed.dart';
part 'gen/shop_detail_response.g.dart';

@unfreezed
class ShopDetailResponse with _$ShopDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory ShopDetailResponse({
    int? id,
    String? name,
    String? category,
    String? floor,
    String? imageUrl,
    bool? offerAvailable,
    bool? newArrival,
    List<ShopDetail>? shopDetail,
  }) = _ShopDetailResponse;

  factory ShopDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$ShopDetailResponseFromJson(json);
}
