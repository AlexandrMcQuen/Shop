// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'list_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListItemModel _$ListItemModelFromJson(Map<String, dynamic> json) {
  return _ListItemModel.fromJson(json);
}

/// @nodoc
mixin _$ListItemModel {
  List<ItemModel> get items => throw _privateConstructorUsedError;
  InfoModel get info => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListItemModelCopyWith<ListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListItemModelCopyWith<$Res> {
  factory $ListItemModelCopyWith(
          ListItemModel value, $Res Function(ListItemModel) then) =
      _$ListItemModelCopyWithImpl<$Res>;
  $Res call({List<ItemModel> items, InfoModel info});

  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class _$ListItemModelCopyWithImpl<$Res>
    implements $ListItemModelCopyWith<$Res> {
  _$ListItemModelCopyWithImpl(this._value, this._then);

  final ListItemModel _value;
  // ignore: unused_field
  final $Res Function(ListItemModel) _then;

  @override
  $Res call({
    Object? items = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      items: items == freezed
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
    ));
  }

  @override
  $InfoModelCopyWith<$Res> get info {
    return $InfoModelCopyWith<$Res>(_value.info, (value) {
      return _then(_value.copyWith(info: value));
    });
  }
}

/// @nodoc
abstract class _$$_ListItemModelCopyWith<$Res>
    implements $ListItemModelCopyWith<$Res> {
  factory _$$_ListItemModelCopyWith(
          _$_ListItemModel value, $Res Function(_$_ListItemModel) then) =
      __$$_ListItemModelCopyWithImpl<$Res>;
  @override
  $Res call({List<ItemModel> items, InfoModel info});

  @override
  $InfoModelCopyWith<$Res> get info;
}

/// @nodoc
class __$$_ListItemModelCopyWithImpl<$Res>
    extends _$ListItemModelCopyWithImpl<$Res>
    implements _$$_ListItemModelCopyWith<$Res> {
  __$$_ListItemModelCopyWithImpl(
      _$_ListItemModel _value, $Res Function(_$_ListItemModel) _then)
      : super(_value, (v) => _then(v as _$_ListItemModel));

  @override
  _$_ListItemModel get _value => super._value as _$_ListItemModel;

  @override
  $Res call({
    Object? items = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_ListItemModel(
      items: items == freezed
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemModel>,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as InfoModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListItemModel implements _ListItemModel {
  _$_ListItemModel({required final List<ItemModel> items, required this.info})
      : _items = items;

  factory _$_ListItemModel.fromJson(Map<String, dynamic> json) =>
      _$$_ListItemModelFromJson(json);

  final List<ItemModel> _items;
  @override
  List<ItemModel> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final InfoModel info;

  @override
  String toString() {
    return 'ListItemModel(items: $items, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListItemModel &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            const DeepCollectionEquality().equals(other.info, info));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      const DeepCollectionEquality().hash(info));

  @JsonKey(ignore: true)
  @override
  _$$_ListItemModelCopyWith<_$_ListItemModel> get copyWith =>
      __$$_ListItemModelCopyWithImpl<_$_ListItemModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListItemModelToJson(
      this,
    );
  }
}

abstract class _ListItemModel implements ListItemModel {
  factory _ListItemModel(
      {required final List<ItemModel> items,
      required final InfoModel info}) = _$_ListItemModel;

  factory _ListItemModel.fromJson(Map<String, dynamic> json) =
      _$_ListItemModel.fromJson;

  @override
  List<ItemModel> get items;
  @override
  InfoModel get info;
  @override
  @JsonKey(ignore: true)
  _$$_ListItemModelCopyWith<_$_ListItemModel> get copyWith =>
      throw _privateConstructorUsedError;
}
