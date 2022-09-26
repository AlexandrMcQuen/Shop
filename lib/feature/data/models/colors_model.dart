import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';

part 'colors_model.g.dart';

@JsonSerializable()
class Colors {
  final int id;
  final String title;
  final String code;
  Colors({required this.id, required this.title, required this.code});

  factory Colors.fromJson(Map<String, dynamic> json) => _$ColorsFromJson(json);

  Map<String, dynamic> toJson() => _$ColorsToJson(this);
}