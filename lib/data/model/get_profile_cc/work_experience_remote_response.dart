import 'package:json_annotation/json_annotation.dart';
import 'package:untitled/domain/model/data/get_profile_cc/work_experience_data.dart';

part 'work_experience_remote_response.g.dart';

@JsonSerializable()
class WorkExperienceRemoteResponseCC
    implements WorkExperienceRemoteResponseCCMapper {
  String? skillExperience;
  String? name;
  String? startWork;
  String? endWork;
  String? description;
  WorkExperienceRemoteResponseCC({
    this.skillExperience,
    this.name,
    this.startWork,
    this.endWork,
    this.description,
  });
  factory WorkExperienceRemoteResponseCC.fromJson(Map<String, dynamic> json) =>
      _$WorkExperienceRemoteResponseCCFromJson(json);

  Map<String, dynamic> toJson() => _$WorkExperienceRemoteResponseCCToJson(this);

  @override
  WorkExperienceDataCC toWorkExperienceDataCC() {
    // TODO: implement toWorkExperienceDataCC
    return WorkExperienceDataCC(
      skillExperience ?? "",
      name ?? "",
      startWork ?? "",
      endWork ?? "",
      description ?? "",
    );
  }
}

abstract class WorkExperienceRemoteResponseCCMapper {
  WorkExperienceDataCC toWorkExperienceDataCC();
}
