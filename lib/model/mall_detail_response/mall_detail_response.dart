import 'package:freezed_annotation/freezed_annotation.dart';

import 'shop.dart';

part 'gen/mall_detail_response.freezed.dart';

part 'gen/mall_detail_response.g.dart';

@unfreezed
class MallDetailResponse with _$MallDetailResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory MallDetailResponse({
    int? id,
    String? name,
    String? location,
    String? address,
    dynamic locationCode,
    String? city,
    double? latitude,
    double? longitude,
    String? mallPicture,
    String? time,
    String? phoneNumber,
    List<Shop>? shops,
  }) = _MallDetailResponse;

  factory MallDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$MallDetailResponseFromJson(json);
}
