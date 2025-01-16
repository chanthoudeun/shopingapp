import 'package:freezed_annotation/freezed_annotation.dart';

import 'shop.dart';

part 'gen/mall_list_response.freezed.dart';
part 'gen/mall_list_response.g.dart';

@unfreezed
class MallListResponse with _$MallListResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory MallListResponse({
    int? id,
    String? mallName,
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
  }) = _MallListResponse;

  factory MallListResponse.fromJson(Map<String, dynamic> json) =>
      _$MallListResponseFromJson(json);
}
