import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/active_and_inactive_item.dart';
import 'package:responsive_dash_board/views/widgets/drawer_item_list_view.dart';
import 'package:responsive_dash_board/views/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  static const UserInfoModel userData =  UserInfoModel(
      image: Images.avatar3,
      title: 'Lekan Okeowo',
      subTitle: 'demo@gmail.com');
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width *.6,
      color: Colors.white,
      child:   const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
                userInfoModel: userData,),
          ),
          SliverToBoxAdapter(
           child: SizedBox(
             height: 8,
           ),
         ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(
                  height: 20,
                )),
                InActiveDrawerItem(drawerItemModel:
                DrawerItemModel(title: 'Setting system', image: Images.setting)),
                InActiveDrawerItem(drawerItemModel:
                DrawerItemModel(title: 'Logout account', image: Images.logout)),
              ],
            ),
          )
        ],
      ),
    );
  }
}

