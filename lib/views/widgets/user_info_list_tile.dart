import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({Key? key ,
    required this.userInfoModel}) : super(key: key);


  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(userInfoModel.subTitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
