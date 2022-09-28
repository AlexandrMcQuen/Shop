import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_model.freezed.dart';
part 'colors_model.g.dart';

@freezed
class Colors with _$Colors{
  factory Colors({
    required int id,
    required String title,
    required String code
}) = _Colors;

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);

}

