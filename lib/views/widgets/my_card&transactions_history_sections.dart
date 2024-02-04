import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/my_card_sections.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history.dart';

class MyCardAndTransactionsHistorySections extends StatelessWidget {
  const MyCardAndTransactionsHistorySections({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSections(),
          Divider(
            height: 40,
            color: Color(0xffF1F1F1),
          ),
          TransactionsHistory(),
        ],
      ),
    );
  }
}
