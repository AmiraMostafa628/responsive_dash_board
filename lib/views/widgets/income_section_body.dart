import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';
import 'package:responsive_dash_board/views/widgets/chart_details.dart';
import 'package:responsive_dash_board/views/widgets/detailed_income_chart.dart';
import 'package:responsive_dash_board/views/widgets/income_chart.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    if (width >= SizeConfig.desktop && width <1750) {
      return const Flexible(child: Padding(
        padding: EdgeInsets.all(16.0),
        child: DetailedIncomeChart(),
      ));
    } else {
      return const Row(
       crossAxisAlignment: CrossAxisAlignment.center,
       children: [
         Expanded(child: IncomeChart()),
         Expanded(
            child: ChartDetails())
      ],
    );
    }
  }
}