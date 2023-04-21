// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/presentation/pages/home_bs/home_bs/home_bs_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreenBS extends StatelessWidget {
  const HomeScreenBS({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Home Screen BS".text.make(),
      ),
      body: BlocBuilder<HomeBsCubit, HomeBsState>(
        builder: (context, homeState) {
          if (homeState is HomeBsIsScuccess) {
            return Container(
              child: Column(
                children: [
                  //profile
                  8.heightBox,
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(2, 1)),
                      ],
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        "Profile".text.make(),
                        8.heightBox,
                        ListTile(
                          leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                  "https://cdn4.vectorstock.com/i/1000x1000/80/88/person-gray-photo-placeholder-man-vector-22808088.jpg")),
                          title: "Nama : ${homeState.data!.profile.username}"
                              .text
                              .make(),
                          subtitle:
                              "Balance :${homeState.data!.profile.balance}"
                                  .text
                                  .make(),
                        )
                      ],
                    ),
                  ),
                  10.heightBox,

                  //riwayat
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(2, 1)),
                      ],
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        "Riwayat".text.make(),
                        8.heightBox,
                        ListTile(
                          leading: Image(
                            image: NetworkImage(
                                "https://images.tokopedia.net/img/cache/500-square/VqbcmM/2022/10/28/016bd573-658e-490d-9598-330528473a0b.jpg"),
                          ),
                          title: "Nama : ${homeState.data!.profile.username}"
                              .text
                              .make(),
                          subtitle:
                              "Balance :${homeState.data!.profile.balance}"
                                  .text
                                  .make(),
                        )
                      ],
                    ),
                  ),
                  10.heightBox,
                  // Text("asdsadsa"),
                  //news
                  Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(color: Colors.black26, offset: Offset(2, 1)),
                      ],
                      color: Colors.grey.shade50,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                        "News".text.make(),
                        8.heightBox,
                        ListView.builder(
                          shrinkWrap: true,
                          itemCount: homeState.data!.news.length,
                          itemBuilder: (context, index) {
                            final news = homeState.data!.news[index];
                            return Row(
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  color: Colors.amber,
                                  child: Image(
                                    image: NetworkImage("${news.news_image}"),
                                  ),
                                ),
                                8.widthBox,
                                Column(
                                  children: [
                                    Container(
                                      child: "${news.title}".text.make(),
                                    ),
                                    Container(
                                      child: "${news.content}".text.make(),
                                    ),
                                  ],
                                ),
                              ],
                            );
                          },
                        )
                      ],
                    ),
                  ),
                ],
              ),
            );
          } else if (homeState is HomeBsIsLoading) {
            return Container(
              child: CircularProgressIndicator(),
            ).centered();
          }
          return Container(
            child: "kosong".text.makeCentered(),
          );
        },
      ),
    );
  }
}
