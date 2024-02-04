import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expanses&quick_invoice.dart';
import 'package:responsive_dash_board/views/widgets/custom_drawer.dart';
import 'package:responsive_dash_board/views/widgets/income_sections.dart';
import 'package:responsive_dash_board/views/widgets/my_card&transactions_history_sections.dart';

class DashBoardDesktopLayout extends StatelessWidget {
  const DashBoardDesktopLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Row(
        children: [
          Expanded(
              child: CustomDrawer()),
          SizedBox(
            width: 32,
          ),
          Expanded(
            flex: 3,
            child: CustomScrollView(
              slivers: [
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Padding(
                          padding: EdgeInsets.only(top: 40),
                          child: AllExpensesAndQuickInvoiceSection(),
                        ),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: 40,
                              ),
                              MyCardAndTransactionsHistorySections(),
                              SizedBox(
                                height: 24,
                              ),
                              Expanded(child: IncomeSection()),
                              SizedBox(
                                height: 24,
                              ),

                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
    );
  }
}


