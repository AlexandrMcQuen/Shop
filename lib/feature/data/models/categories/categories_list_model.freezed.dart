// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'categories_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CategoriesListModel _$CategoriesListModelFromJson(Map<String, dynamic> json) {
  return _CategoriesListModel.fromJson(json);
}

/// @nodoc
mixin _$CategoriesListModel {
  List<CategoriesModel> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoriesListModelCopyWith<CategoriesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesListModelCopyWith<$Res> {
  factory $CategoriesListModelCopyWith(
          CategoriesListModel value, $Res Function(CategoriesListModel) then) =
      _$CategoriesListModelCopyWithImpl<$Res>;
  $Res call({List<CategoriesModel> items});
}

/// @nodoc
class _$CategoriesListModelCopyWithImpl<$Res>
    implements $CategoriesListModelCopyWith<$Res> {
  _$CategoriesListModelCopyWithImpl(this._value, this._then);

  final CategoriesListModel _value;
  // ignore: unused_field
  final $Res Function(CategoriesListModel) _then;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc
abstract class _$$_CategoriesListModelCopyWith<$Res>
    implements $CategoriesListModelCopyWith<$Res> {
  factory _$$_CategoriesListModelCopyWith(_$_CategoriesListModel value,
          $Res Function(_$_CategoriesListModel) then) =
      __$$_CategoriesListModelCopyWithImpl<$Res>;
  @override
  $Res call({List<CategoriesModel> items});
}

/// @nodoc
class __$$_CategoriesListModelCopyWithImpl<$Res>
    extends _$CategoriesListModelCopyWithImpl<$Res>
    implements _$$_CategoriesListModelCopyWith<$Res> {
  __$$_CategoriesListModelCopyWithImpl(_$_CategoriesListModel _value,
      $Res Function(_$_CategoriesListModel) _then)
      : super(_value, (v) => _then(v as _$_CategoriesListModel));

  @override
  _$_CategoriesListModel get _value => super._value as _$_CategoriesListModel;

  @override
  $Res call({
    Object? items = freezed,
  }) {
    return _then(_$_CategoriesListModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<CategoriesModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CategoriesListModel implements _CategoriesListModel {
  _$_CategoriesListModel({required final List<CategoriesModel> items})
      : _items = items;

  factory _$_CategoriesListModel.fromJson(Map<String, dynamic> json) =>
      _$$_CategoriesListModelFromJson(json);

  final List<CategoriesModel> _items;
  @override
  List<CategoriesModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'CategoriesListModel(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CategoriesListModel &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  _$$_CategoriesListModelCopyWith<_$_CategoriesListModel> get copyWith =>
      __$$_CategoriesListModelCopyWithImpl<_$_CategoriesListModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoriesListModelToJson(
      this,
    );
  }
}

abstract class _CategoriesListModel implements CategoriesListModel {
  factory _CategoriesListModel({required final List<CategoriesModel> items}) =
      _$_CategoriesListModel;

  factory _CategoriesListModel.fromJson(Map<String, dynamic> json) =
      _$_CategoriesListModel.fromJson;

  @override
  List<CategoriesModel> get items;
  @override
  @JsonKey(ignore: true)
  _$$_CategoriesListModelCopyWith<_$_CategoriesListModel> get copyWith =>
      throw _privateConstructorUsedError;
}
