// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mood_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MoodModelImpl _$$MoodModelImplFromJson(Map<String, dynamic> json) =>
    _$MoodModelImpl(
      id: json['id'] as int,
      moodCategoryData: MoodCategoryData.fromJson(
          json['MoodCategoryData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MoodModelImplToJson(_$MoodModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'MoodCategoryData': instance.moodCategoryData,
    };

_$MoodCategoryDataImpl _$$MoodCategoryDataImplFromJson(
        Map<String, dynamic> json) =>
    _$MoodCategoryDataImpl(
      id: json['id'] as String,
      localIcon: json['local_icon'] as String,
      remoteIcon: json['remote_icon'] as String,
      title: json['title'] as String,
    );

Map<String, dynamic> _$$MoodCategoryDataImplToJson(
        _$MoodCategoryDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'local_icon': instance.localIcon,
      'remote_icon': instance.remoteIcon,
      'title': instance.title,
    };
