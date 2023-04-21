import 'dart:convert';

import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/model/base_response/base_remote_response.dart';
import 'package:untitled/data/model/get_profile_cc/get_profile_collection_remote_response.dart';
import 'package:untitled/data/service/remote/get_profile_cc/get_profile_cc_service.dart';
import 'package:untitled/domain/model/data/get_profile_cc/get_profile_data.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/repository/get_profile_cc/get_profile_cc_repository.dart';

class GetProfileRepositoryImplCC implements GetProfileCCRepository {
  final getProfileService = GetProfileRemoteServiceCC();

  @override
  Future<ResultEntity<GetProfileDataCC>> fetchGetProfileCC(
      AuthenticationHeaderRequest header) async {
    // TODO: implement fetchGetProfileCC
    try {
      print("Fetch Repo berrhasil ");
      final response = await getProfileService.fetchGetProfileCC(header);
      if (response.statusCode == 200 || response.statusCode == 201) {
        BaseRemoteResponse<GetProfileCollectionRemoteResponseCC>
            baseResponseObject =
            BaseRemoteResponse<GetProfileCollectionRemoteResponseCC>.fromJson(
                jsonDecode(response.body),
                (json) => GetProfileCollectionRemoteResponseCC.fromJson(
                    json as Map<String, dynamic>));

        print(baseResponseObject.data);
        print(baseResponseObject.status!.code);
        GetProfileCollectionRemoteResponseCC.fromJson(
            jsonDecode(response.body));

        if (baseResponseObject.status == null) {
          print(baseResponseObject.status);
          return ResultError(message: baseResponseObject.status!.message);
        } else if (baseResponseObject.status?.code != 0) {
          print(baseResponseObject.status!.code);
          // return ResultSuccess(baseResponseObject.data!.toHomeDataBS());
          return ResultError<GetProfileDataCC>(message: "err 2");
        } else {
          print(baseResponseObject.data);
          return ResultSuccess(baseResponseObject.data!.toGetProfileDataCC());
        }
      } else {
        print(response.statusCode);
        return ResultError<GetProfileDataCC>(message: "");
      }
    } catch (e) {
      print(e.toString());
      return ResultError(message: e.toString());
    }
  }
}
