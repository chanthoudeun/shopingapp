import 'package:freezed_annotation/freezed_annotation.dart';

import 'shop.dart';

part 'gen/mall_response.freezed.dart';
part 'gen/mall_response.g.dart';

@unfreezed
class MallResponse with _$MallResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  factory MallResponse({
    int? id,
    String? mallName,
    String? location,
    String? address,
    dynamic locationCode,
    String? city,
    double? latitude,
    double? longitude,
    List<Shop>? shops,
  }) = _MallResponse;

  factory MallResponse.fromJson(Map<String, dynamic> json) =>
      _$MallResponseFromJson(json);
}
