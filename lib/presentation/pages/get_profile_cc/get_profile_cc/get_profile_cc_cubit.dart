import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/base/authentication_header_request.dart.dart';
import 'package:untitled/domain/model/data/get_profile_cc/get_profile_data.dart';
import 'package:untitled/domain/repository/get_profile_cc/get_profile_cc_repository.dart';

part 'get_profile_cc_state.dart';

class GetProfileCcCubit extends Cubit<GetProfileCcState> {
  GetProfileCCRepository repository;
  GetProfileCcCubit(this.repository) : super(GetProfileCcInitial());

  Future<void> fetchGetProfileCC() async {
    final response = await repository
        .fetchGetProfileCC(AuthenticationHeaderRequest("accesToken"));
    if (response is ResultSuccess) {
      emit(GetProfileCcIsSuccess((response as ResultSuccess).data));
      print("cubit success");
    } else {
      emit(GetProfileCcIsFailed(message: (response as ResultError).message));
      print("cubit failed");
    }
  }
}
