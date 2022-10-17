// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'order_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OrderStatusModel _$OrderStatusModelFromJson(Map<String, dynamic> json) {
  return _OrderStatusModel.fromJson(json);
}

/// @nodoc
mixin _$OrderStatusModel {
  int? get id => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OrderStatusModelCopyWith<OrderStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderStatusModelCopyWith<$Res> {
  factory $OrderStatusModelCopyWith(
          OrderStatusModel value, $Res Function(OrderStatusModel) then) =
      _$OrderStatusModelCopyWithImpl<$Res>;
  $Res call({int? id, String? status});
}

/// @nodoc
class _$OrderStatusModelCopyWithImpl<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  _$OrderStatusModelCopyWithImpl(this._value, this._then);

  final OrderStatusModel _value;
  // ignore: unused_field
  final $Res Function(OrderStatusModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_OrderStatusModelCopyWith<$Res>
    implements $OrderStatusModelCopyWith<$Res> {
  factory _$$_OrderStatusModelCopyWith(
          _$_OrderStatusModel value, $Res Function(_$_OrderStatusModel) then) =
      __$$_OrderStatusModelCopyWithImpl<$Res>;
  @override
  $Res call({int? id, String? status});
}

/// @nodoc
class __$$_OrderStatusModelCopyWithImpl<$Res>
    extends _$OrderStatusModelCopyWithImpl<$Res>
    implements _$$_OrderStatusModelCopyWith<$Res> {
  __$$_OrderStatusModelCopyWithImpl(
      _$_OrderStatusModel _value, $Res Function(_$_OrderStatusModel) _then)
      : super(_value, (v) => _then(v as _$_OrderStatusModel));

  @override
  _$_OrderStatusModel get _value => super._value as _$_OrderStatusModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? status = freezed,
  }) {
    return _then(_$_OrderStatusModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OrderStatusModel implements _OrderStatusModel {
  _$_OrderStatusModel({required this.id, required this.status});

  factory _$_OrderStatusModel.fromJson(Map<String, dynamic> json) =>
      _$$_OrderStatusModelFromJson(json);

  @override
  final int? id;
  @override
  final String? status;

  @override
  String toString() {
    return 'OrderStatusModel(id: $id, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderStatusModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$$_OrderStatusModelCopyWith<_$_OrderStatusModel> get copyWith =>
      __$$_OrderStatusModelCopyWithImpl<_$_OrderStatusModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OrderStatusModelToJson(
      this,
    );
  }
}

abstract class _OrderStatusModel implements OrderStatusModel {
  factory _OrderStatusModel(
      {required final int? id,
      required final String? status}) = _$_OrderStatusModel;

  factory _OrderStatusModel.fromJson(Map<String, dynamic> json) =
      _$_OrderStatusModel.fromJson;

  @override
  int? get id;
  @override
  String? get status;
  @override
  @JsonKey(ignore: true)
  _$$_OrderStatusModelCopyWith<_$_OrderStatusModel> get copyWith =>
      throw _privateConstructorUsedError;
}
