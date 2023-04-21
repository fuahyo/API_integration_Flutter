part of 'get_profile_cc_cubit.dart';

abstract class GetProfileCcState extends Equatable {
  const GetProfileCcState();

  @override
  List<Object> get props => [];
}

class GetProfileCcInitial extends GetProfileCcState {}

class GetProfileCcIsLoading extends GetProfileCcState {}

class GetProfileCcIsSuccess extends GetProfileCcState {
  GetProfileDataCC? data;

  GetProfileCcIsSuccess(this.data);
}

class GetProfileCcIsFailed extends GetProfileCcState {
  String? message;
  GetProfileCcIsFailed({
    this.message,
  });
}
