import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/get_profile_cc/education_data.dart';
import 'package:untitled/domain/model/data/get_profile_cc/get_profile_data.dart';

part 'education_remote_response.g.dart';

@JsonSerializable()
class EducationRemoteResponseCC implements EducationRemoteResponseCCMapper {
  String? name;
  String? startEducation;
  String? endEducation;
  String? skillExperience;
  String? description;
  EducationRemoteResponseCC({
    this.name,
    this.startEducation,
    this.endEducation,
    this.skillExperience,
    this.description,
  });

  factory EducationRemoteResponseCC.fromJson(Map<String, dynamic> json) =>
      _$EducationRemoteResponseCCFromJson(json);

  Map<String, dynamic> toJson() => _$EducationRemoteResponseCCToJson(this);

  @override
  EducationDataCC toEducationDataCC() {
    // TODO: implement toEducationDataCC
    return EducationDataCC(
      name ?? "",
      startEducation ?? "",
      endEducation ?? "",
      skillExperience ?? "",
      description ?? "",
    );
  }
}

abstract class EducationRemoteResponseCCMapper {
  EducationDataCC toEducationDataCC();
}
