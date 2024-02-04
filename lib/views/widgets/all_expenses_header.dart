import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/range_options.dart';

class ALLExpensesHeader extends StatelessWidget {
  const ALLExpensesHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        const RangeOptions(),
      ],
    );
  }
}
