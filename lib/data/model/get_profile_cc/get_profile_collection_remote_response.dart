import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/data/model/get_profile_cc/education_remote_response.dart';
import 'package:untitled/data/model/get_profile_cc/work_experience_remote_response.dart';
import 'package:untitled/domain/model/data/get_profile_cc/education_data.dart';
import 'package:untitled/domain/model/data/get_profile_cc/get_profile_data.dart';
import 'package:untitled/domain/model/data/get_profile_cc/work_experience_data.dart';

part 'get_profile_collection_remote_response.g.dart';

@JsonSerializable()
class GetProfileCollectionRemoteResponseCC
    implements GetProfileCollectionRemoteResponseCCMapper {
  String? name;
  String? photo;
  String? skill;
  String? phoneNumber;
  List<WorkExperienceRemoteResponseCC>? workExperience;
  List<EducationRemoteResponseCC>? education;
  List<String>? ability;
  List<String>? language;
  String? cvResume;
  String? portofolio;
  GetProfileCollectionRemoteResponseCC({
    this.name,
    this.photo,
    this.skill,
    this.phoneNumber,
    this.workExperience,
    this.education,
    this.ability,
    this.language,
    this.cvResume,
    this.portofolio,
  });
  factory GetProfileCollectionRemoteResponseCC.fromJson(
          Map<String, dynamic> json) =>
      _$GetProfileCollectionRemoteResponseCCFromJson(json);

  Map<String, dynamic> toJson() =>
      _$GetProfileCollectionRemoteResponseCCToJson(this);

  @override
  GetProfileDataCC toGetProfileDataCC() {
    // TODO: implement toGetProfileDataCC
    return GetProfileDataCC(
      name ?? "",
      photo ?? "",
      skill ?? "",
      phoneNumber ?? "",
      workExperience!.map((e) => e.toWorkExperienceDataCC()).toList(),
      education!.map((e) => e.toEducationDataCC()).toList(),
      ability!.map((e) => e.toString()).toList(),
      language!.map((e) => e.toString()).toList(),
      cvResume ?? "",
      portofolio ?? "",
    );
  }
}

abstract class GetProfileCollectionRemoteResponseCCMapper {
  GetProfileDataCC toGetProfileDataCC();
}
