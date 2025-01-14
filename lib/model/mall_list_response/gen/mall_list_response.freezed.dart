// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../mall_list_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MallListResponse _$MallListResponseFromJson(Map<String, dynamic> json) {
  return _MallListResponse.fromJson(json);
}

/// @nodoc
mixin _$MallListResponse {
  int? get id => throw _privateConstructorUsedError;
  set id(int? value) => throw _privateConstructorUsedError;
  String? get mallName => throw _privateConstructorUsedError;
  set mallName(String? value) => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  set location(String? value) => throw _privateConstructorUsedError;
  List<Shop>? get shops => throw _privateConstructorUsedError;
  set shops(List<Shop>? value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MallListResponseCopyWith<MallListResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MallListResponseCopyWith<$Res> {
  factory $MallListResponseCopyWith(
          MallListResponse value, $Res Function(MallListResponse) then) =
      _$MallListResponseCopyWithImpl<$Res, MallListResponse>;
  @useResult
  $Res call({int? id, String? mallName, String? location, List<Shop>? shops});
}

/// @nodoc
class _$MallListResponseCopyWithImpl<$Res, $Val extends MallListResponse>
    implements $MallListResponseCopyWith<$Res> {
  _$MallListResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mallName = freezed,
    Object? location = freezed,
    Object? shops = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mallName: freezed == mallName
          ? _value.mallName
          : mallName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      shops: freezed == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MallListResponseImplCopyWith<$Res>
    implements $MallListResponseCopyWith<$Res> {
  factory _$$MallListResponseImplCopyWith(_$MallListResponseImpl value,
          $Res Function(_$MallListResponseImpl) then) =
      __$$MallListResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? mallName, String? location, List<Shop>? shops});
}

/// @nodoc
class __$$MallListResponseImplCopyWithImpl<$Res>
    extends _$MallListResponseCopyWithImpl<$Res, _$MallListResponseImpl>
    implements _$$MallListResponseImplCopyWith<$Res> {
  __$$MallListResponseImplCopyWithImpl(_$MallListResponseImpl _value,
      $Res Function(_$MallListResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? mallName = freezed,
    Object? location = freezed,
    Object? shops = freezed,
  }) {
    return _then(_$MallListResponseImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      mallName: freezed == mallName
          ? _value.mallName
          : mallName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      shops: freezed == shops
          ? _value.shops
          : shops // ignore: cast_nullable_to_non_nullable
              as List<Shop>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.none)
class _$MallListResponseImpl implements _MallListResponse {
  _$MallListResponseImpl({this.id, this.mallName, this.location, this.shops});

  factory _$MallListResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$MallListResponseImplFromJson(json);

  @override
  int? id;
  @override
  String? mallName;
  @override
  String? location;
  @override
  List<Shop>? shops;

  @override
  String toString() {
    return 'MallListResponse(id: $id, mallName: $mallName, location: $location, shops: $shops)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MallListResponseImplCopyWith<_$MallListResponseImpl> get copyWith =>
      __$$MallListResponseImplCopyWithImpl<_$MallListResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MallListResponseImplToJson(
      this,
    );
  }
}

abstract class _MallListResponse implements MallListResponse {
  factory _MallListResponse(
      {int? id,
      String? mallName,
      String? location,
      List<Shop>? shops}) = _$MallListResponseImpl;

  factory _MallListResponse.fromJson(Map<String, dynamic> json) =
      _$MallListResponseImpl.fromJson;

  @override
  int? get id;
  set id(int? value);
  @override
  String? get mallName;
  set mallName(String? value);
  @override
  String? get location;
  set location(String? value);
  @override
  List<Shop>? get shops;
  set shops(List<Shop>? value);
  @override
  @JsonKey(ignore: true)
  _$$MallListResponseImplCopyWith<_$MallListResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
