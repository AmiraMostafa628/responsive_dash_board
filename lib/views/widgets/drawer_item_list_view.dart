import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
  super.key,
  });


  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
    DrawerItemModel(title:'Dashboard',image: Images.dashboard),
    DrawerItemModel(title:'My Transaction',image: Images.myTransaction),
    DrawerItemModel(title:'Statistics',image: Images.statistics),
    DrawerItemModel(title:'Wallet Account',image: Images.walletAccount),
    DrawerItemModel(title:'My Investments',image: Images.myInvestments),

  ];

  int selectedIndex =0;

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context,index){
        return GestureDetector(
          onTap: (){
            if(selectedIndex != index)
              {
                setState(() {
                  selectedIndex = index;
                });
              }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: selectedIndex == index,),
          ),
        );
      },
      itemCount: items.length,

    );
  }
}