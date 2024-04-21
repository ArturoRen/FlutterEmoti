// To parse this JSON data, do
//
//     final moodModel = moodModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'mood_model.freezed.dart';
part 'mood_model.g.dart';

MoodModel moodModelFromJson(String str) => MoodModel.fromJson(json.decode(str));

String moodModelToJson(MoodModel data) => json.encode(data.toJson());

@freezed
class MoodModel with _$MoodModel {
  const factory MoodModel({
    @JsonKey(
      name: "id",
      defaultValue: "0",
    )
    required int id,
    @JsonKey(name: "MoodCategoryData")
    required MoodCategoryData moodCategoryData,
  }) = _MoodModel;

  factory MoodModel.fromJson(Map<String, dynamic> json) =>
      _$MoodModelFromJson(json);
}

@freezed
class MoodCategoryData with _$MoodCategoryData {
  const factory MoodCategoryData({
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "local_icon") required String localIcon,
    @JsonKey(name: "remote_icon") required String remoteIcon,
    @JsonKey(name: "title") required String title,
  }) = _MoodCategoryData;

  factory MoodCategoryData.fromJson(Map<String, dynamic> json) =>
      _$MoodCategoryDataFromJson(json);
}
