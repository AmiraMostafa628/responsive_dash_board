import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  const TitleTextField({Key? key, required this.title, required this.hint}) : super(key: key);

  final String title,hint;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hint: hint,
        )
      ],
    );
  }
}
