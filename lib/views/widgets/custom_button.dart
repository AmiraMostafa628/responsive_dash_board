import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({Key? key, this.backgroundColor, this.textColor, required this.title}) : super(key: key);

  final Color? backgroundColor, textColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0.0,
          backgroundColor: backgroundColor?? const Color(0xFF4DB7F2),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
          onPressed: (){},
          child:  Text(title,
            style: AppStyles.styleSemiBold18(context).copyWith(
              color: textColor
            ),
          )),
    );
  }
}
