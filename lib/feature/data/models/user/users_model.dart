import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_model.freezed.dart';
part 'users_model.g.dart';

@freezed
class UserModel with _$UserModel{
  factory UserModel({
    required int? id,
    required String? accessKey
}) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}