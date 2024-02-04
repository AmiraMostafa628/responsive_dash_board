import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({Key? key}) : super(key: key);

  static const List <UserInfoModel> items = [
     UserInfoModel(
      image: Images.avatar1,
      title: 'Madrani Andi',
      subTitle: 'Madraniadi20@gmail'),
     UserInfoModel(
        image: Images.avatar2,
        title: 'Josua Nunito',
        subTitle: 'Josh Nunito@gmail.com'),
     UserInfoModel(
        image: Images.avatar1,
        title: 'Madrani Andi',
        subTitle: 'Madraniadi20@gmail'),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.map((e) => IntrinsicWidth(child: UserInfoListTile(userInfoModel: e))).toList(),
      ),
    );
    /*return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: items.length,
          itemBuilder: (context,index){
        return IntrinsicWidth(
          child: UserInfoListTile(userInfoModel: items[index],
          ),
        );
      }),
    );*/
  }
}
