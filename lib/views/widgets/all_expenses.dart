import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_header.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_items_list_view.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      child: Column(
        children: [
          ALLExpensesHeader(),
          SizedBox(height: 16,),
          AllExpensesItemsListView(),
        ],
      ),
    );
  }
}




