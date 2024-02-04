import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transactions_model.dart';
import 'package:responsive_dash_board/views/widgets/transactions_history_item.dart';

class TransactionsHistoryListView extends StatelessWidget {
  const TransactionsHistoryListView({Key? key}) : super(key: key);

  static const List<TransactionsModel> items =[
    TransactionsModel(
        title: 'Cash Withdrawal',
        amount: r'$20,129',
        date: '13 Apr, 2022',
        isWithdrawal: true),
    TransactionsModel(
        title: 'Landing Page project',
        amount: r'$2,000',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: false),
    TransactionsModel(
        title: 'Juni Mobile App project',
        amount: r'$20,129',
        date: '13 Apr, 2022 at 3:30 PM',
        isWithdrawal: true),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionHistoryItem(transactionsModel: e)).toList(),
    );
  }
}
