import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatefulWidget {
  const IncomeChart({Key? key}) : super(key: key);

  @override
  State<IncomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<IncomeChart> {
  int activeIndex = -1;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
        aspectRatio: 1,
        child: PieChart(getChartData()));
  }

  PieChartData getChartData(){
    return PieChartData(
      sectionsSpace: 0.0,
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (flTouchEvent, pieTouchResponse){
          activeIndex = pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});

        }
      ),
      sections: [
        PieChartSectionData(
          value: 40,
          color: const Color(0xFF208BC7),
          showTitle: false,
          radius: activeIndex==0 ?50:40
        ),
        PieChartSectionData(
            value: 25,
            color: const Color(0xFF4DB7F2),
            showTitle: false,
            radius: activeIndex==1 ?50:40
        ),
        PieChartSectionData(
            value: 20,
            color: const Color(0xFF064060),
            showTitle: false,
            radius: activeIndex==2 ?50:40
        ),
        PieChartSectionData(
            value: 22,
            color: const Color(0xFFE2DECD),
            showTitle: false,
            radius: activeIndex==3 ?50:40
        ),
      ]
    );
  }
}
