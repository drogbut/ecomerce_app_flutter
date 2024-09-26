// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_color.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ProductColorModel _$ProductColorModelFromJson(Map<String, dynamic> json) {
  return _ProductColorModel.fromJson(json);
}

/// @nodoc
mixin _$ProductColorModel {
  String get title => throw _privateConstructorUsedError;
  String get hexCode => throw _privateConstructorUsedError;

  /// Serializes this ProductColorModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductColorModelCopyWith<ProductColorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductColorModelCopyWith<$Res> {
  factory $ProductColorModelCopyWith(
          ProductColorModel value, $Res Function(ProductColorModel) then) =
      _$ProductColorModelCopyWithImpl<$Res, ProductColorModel>;
  @useResult
  $Res call({String title, String hexCode});
}

/// @nodoc
class _$ProductColorModelCopyWithImpl<$Res, $Val extends ProductColorModel>
    implements $ProductColorModelCopyWith<$Res> {
  _$ProductColorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hexCode = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductColorModelImplCopyWith<$Res>
    implements $ProductColorModelCopyWith<$Res> {
  factory _$$ProductColorModelImplCopyWith(_$ProductColorModelImpl value,
          $Res Function(_$ProductColorModelImpl) then) =
      __$$ProductColorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String hexCode});
}

/// @nodoc
class __$$ProductColorModelImplCopyWithImpl<$Res>
    extends _$ProductColorModelCopyWithImpl<$Res, _$ProductColorModelImpl>
    implements _$$ProductColorModelImplCopyWith<$Res> {
  __$$ProductColorModelImplCopyWithImpl(_$ProductColorModelImpl _value,
      $Res Function(_$ProductColorModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? hexCode = null,
  }) {
    return _then(_$ProductColorModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      hexCode: null == hexCode
          ? _value.hexCode
          : hexCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductColorModelImpl implements _ProductColorModel {
  const _$ProductColorModelImpl({required this.title, required this.hexCode});

  factory _$ProductColorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductColorModelImplFromJson(json);

  @override
  final String title;
  @override
  final String hexCode;

  @override
  String toString() {
    return 'ProductColorModel(title: $title, hexCode: $hexCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductColorModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.hexCode, hexCode) || other.hexCode == hexCode));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, hexCode);

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductColorModelImplCopyWith<_$ProductColorModelImpl> get copyWith =>
      __$$ProductColorModelImplCopyWithImpl<_$ProductColorModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductColorModelImplToJson(
      this,
    );
  }
}

abstract class _ProductColorModel implements ProductColorModel {
  const factory _ProductColorModel(
      {required final String title,
      required final String hexCode}) = _$ProductColorModelImpl;

  factory _ProductColorModel.fromJson(Map<String, dynamic> json) =
      _$ProductColorModelImpl.fromJson;

  @override
  String get title;
  @override
  String get hexCode;

  /// Create a copy of ProductColorModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductColorModelImplCopyWith<_$ProductColorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
