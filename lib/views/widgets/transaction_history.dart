import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/transaction_history_list_view.dart';
import 'package:responsive_dash_board/views/widgets/transactions_history_header.dart';

class TransactionsHistory extends StatelessWidget {
  const TransactionsHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionsHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
          style: AppStyles.styleMedium16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const TransactionsHistoryListView()

      ],
    );
  }
}

