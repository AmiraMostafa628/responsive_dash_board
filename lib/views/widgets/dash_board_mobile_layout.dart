
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses&quick_invoice.dart';
import 'package:responsive_dash_board/views/widgets/income_sections.dart';
import 'package:responsive_dash_board/views/widgets/my_card&transactions_history_sections.dart';

class DashBoardMobileLayout extends StatelessWidget {
  const DashBoardMobileLayout({
  super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionsHistorySections(),
          SizedBox(
            height: 24,
          ),
          IncomeSection(),
        ],
      ),
    );
  }
}