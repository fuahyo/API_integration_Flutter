import 'package:untitled/domain/model/data/get_profile_cc/education_data.dart';
import 'package:untitled/domain/model/data/get_profile_cc/work_experience_data.dart';

class GetProfileDataCC {
  String name;
  String photo;
  String skill;
  String phoneNumber;
  List<WorkExperienceDataCC> workExperience;
  List<EducationDataCC> education;
  List<String> ability;
  List<String> language;
  String cvResume;
  String portofolio;

  GetProfileDataCC(
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
  );
}
