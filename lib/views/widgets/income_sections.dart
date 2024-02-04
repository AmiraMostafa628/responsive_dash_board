import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/income_section_body.dart';
import 'package:responsive_dash_board/views/widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
        child: Column(
          children: [
            IncomeSectionHeader(),
            IncomeSectionBody()

          ],
        ));
  }
}




