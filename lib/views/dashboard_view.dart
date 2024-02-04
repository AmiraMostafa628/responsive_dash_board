import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/adaptive_layout.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_desktop_layout.dart';
import 'package:responsive_dash_board/views/widgets/dash_board_mobile_layout.dart';
import 'package:responsive_dash_board/views/widgets/dashboard_tablet_layout.dart';

class DashBoardView extends StatefulWidget {
  const DashBoardView({Key? key}) : super(key: key);

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  final GlobalKey<ScaffoldState> scaffoldKey= GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xFFF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < SizeConfig.tablet ?AppBar(
        elevation: 0.0,
        backgroundColor: const Color(0xffFAFAFA),
        leading: IconButton(
          onPressed: (){
            scaffoldKey.currentState!.openDrawer();
          },
            icon: const Icon(Icons.menu,color: Colors.black,)),
      ):null,
      drawer: MediaQuery.sizeOf(context).width <SizeConfig.tablet ? const CustomDrawer() :null,
      body: AdaptiveLayout(
        mobileLayout: (context)=>const DashBoardMobileLayout(),
        tabletLayout: (context)=>const DashBoardTabletLayout(),
        desktopLayout: (context)=>const DashBoardDesktopLayout(),
      ),
    );
  }
}
