import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({Key? key}) : super(key: key);

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
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
              title: activeIndex==0 ?'Design service' :'40%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                color: activeIndex==0 ? null:Colors.white
              ),
              titlePositionPercentageOffset: activeIndex == 0? 1.5:null,
              value: 40,
              color: const Color(0xFF208BC7),
              radius: activeIndex==0 ?60:50
          ),
          PieChartSectionData(
              title: activeIndex==1 ?'Design product' :'25%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                  color: activeIndex==1 ? null:Colors.white
              ),
              titlePositionPercentageOffset: activeIndex==1?1.5:null,
              value: 25,
              color: const Color(0xFF4DB7F2),
              radius: activeIndex==1 ?60:50
          ),
          PieChartSectionData(
              title: activeIndex==2 ?'Product royalti' :'20%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                  color: activeIndex==2 ? null:Colors.white
              ),
              titlePositionPercentageOffset: activeIndex==2?1.3:null,
              value: 20,
              color: const Color(0xFF064060),
              radius: activeIndex==2 ?60:50
          ),
          PieChartSectionData(
              title: activeIndex==3 ?'Other' :'22%',
              titleStyle: AppStyles.styleMedium16(context).copyWith(
                  color: activeIndex==3 ? null:Colors.white
              ),
              titlePositionPercentageOffset: activeIndex==3?1.5:null,
              value: 22,
              color: const Color(0xFFE2DECD),
              radius: activeIndex==3 ?60:50
          ),
        ]
    );
  }
}