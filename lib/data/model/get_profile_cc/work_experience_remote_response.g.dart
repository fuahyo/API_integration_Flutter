// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_experience_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WorkExperienceRemoteResponseCC _$WorkExperienceRemoteResponseCCFromJson(
        Map<String, dynamic> json) =>
    WorkExperienceRemoteResponseCC(
      skillExperience: json['skillExperience'] as String?,
      name: json['name'] as String?,
      startWork: json['startWork'] as String?,
      endWork: json['endWork'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$WorkExperienceRemoteResponseCCToJson(
        WorkExperienceRemoteResponseCC instance) =>
    <String, dynamic>{
      'skillExperience': instance.skillExperience,
      'name': instance.name,
      'startWork': instance.startWork,
      'endWork': instance.endWork,
      'description': instance.description,
    };
