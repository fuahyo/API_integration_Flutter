import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/repository/get_profile_cc/get_profile_repository_impl.dart';
import 'package:untitled/data/repository/login_repository_impl.dart';
import 'package:untitled/presentation/pages/get_profile_cc/get_profile_cc/get_profile_cc_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class GetProfileScreenCC extends StatefulWidget {
  const GetProfileScreenCC({super.key});

  @override
  State<GetProfileScreenCC> createState() => _GetProfileScreenCCState();
}

class _GetProfileScreenCCState extends State<GetProfileScreenCC> {
  final _nameController = TextEditingController();
  late GetProfileCcCubit _getProfileCubit;
  @override
  void initState() {
    super.initState();
    _getProfileCubit = GetProfileCcCubit(GetProfileRepositoryImplCC());
  }

  @override
  void dispose() {
    _getProfileCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: "Get Profile".text.make(),
      ),
      body: BlocBuilder<GetProfileCcCubit, GetProfileCcState>(
        builder: (context, getProfileState) {
          if (getProfileState is GetProfileCcIsSuccess) {
            return Container(
              child: Column(
                children: [
                  "Berhasil".text.make(),
                  8.heightBox,
                ],
              ),
            );
          } else if (getProfileState is GetProfileCcIsLoading) {
            return Container(
              child: CircularProgressIndicator(),
            ).centered();
          }
          return Container(
            child: "Data Kosong".text.makeCentered(),
          );
        },
      ),
    );
  }
}
