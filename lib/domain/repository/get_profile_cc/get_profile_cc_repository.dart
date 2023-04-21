import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/get_profile_cc/get_profile_data.dart';

abstract class GetProfileCCRepository {
  Future<ResultEntity<GetProfileDataCC>> fetchGetProfileCC(
      AuthenticationHeaderRequest header);
}
