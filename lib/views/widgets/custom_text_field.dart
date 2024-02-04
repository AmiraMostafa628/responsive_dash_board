import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({Key? key, required this.hint}) : super(key: key);

  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.styleRegular16(context).copyWith(
          color: const Color(0xFFAAAAAA),
        ),
        fillColor: const Color(0xffFAFAFA),
        filled: true,
        border: buildOutlineInputBorder(),
        focusedBorder: buildOutlineInputBorder(),
        enabledBorder: buildOutlineInputBorder(),


      ),
    );
  }

  OutlineInputBorder buildOutlineInputBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: Color(0xffFAFAFA)
        ),
      );
  }
}
