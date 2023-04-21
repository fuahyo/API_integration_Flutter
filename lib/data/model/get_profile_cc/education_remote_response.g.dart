// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'education_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EducationRemoteResponseCC _$EducationRemoteResponseCCFromJson(
        Map<String, dynamic> json) =>
    EducationRemoteResponseCC(
      name: json['name'] as String?,
      startEducation: json['startEducation'] as String?,
      endEducation: json['endEducation'] as String?,
      skillExperience: json['skillExperience'] as String?,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$EducationRemoteResponseCCToJson(
        EducationRemoteResponseCC instance) =>
    <String, dynamic>{
      'name': instance.name,
      'startEducation': instance.startEducation,
      'endEducation': instance.endEducation,
      'skillExperience': instance.skillExperience,
      'description': instance.description,
    };
