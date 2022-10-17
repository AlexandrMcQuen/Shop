import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'colors_model.freezed.dart';
part 'colors_model.g.dart';

@freezed
class ColorsModel with _$ColorsModel{
  factory ColorsModel({
    required int? id,
    required String? title,
    required String? code
}) = _ColorsModel;

  factory ColorsModel.fromJson(Map<String, dynamic> json) => _$ColorsModelFromJson(json);

}

