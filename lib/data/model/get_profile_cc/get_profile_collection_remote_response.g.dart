// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_profile_collection_remote_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetProfileCollectionRemoteResponseCC
    _$GetProfileCollectionRemoteResponseCCFromJson(Map<String, dynamic> json) =>
        GetProfileCollectionRemoteResponseCC(
          name: json['name'] as String?,
          photo: json['photo'] as String?,
          skill: json['skill'] as String?,
          phoneNumber: json['phoneNumber'] as String?,
          workExperience: (json['workExperience'] as List<dynamic>?)
              ?.map((e) => WorkExperienceRemoteResponseCC.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
          education: (json['education'] as List<dynamic>?)
              ?.map((e) =>
                  EducationRemoteResponseCC.fromJson(e as Map<String, dynamic>))
              .toList(),
          ability: (json['ability'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          language: (json['language'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          cvResume: json['cvResume'] as String?,
          portofolio: json['portofolio'] as String?,
        );

Map<String, dynamic> _$GetProfileCollectionRemoteResponseCCToJson(
        GetProfileCollectionRemoteResponseCC instance) =>
    <String, dynamic>{
      'name': instance.name,
      'photo': instance.photo,
      'skill': instance.skill,
      'phoneNumber': instance.phoneNumber,
      'workExperience': instance.workExperience,
      'education': instance.education,
      'ability': instance.ability,
      'language': instance.language,
      'cvResume': instance.cvResume,
      'portofolio': instance.portofolio,
    };
