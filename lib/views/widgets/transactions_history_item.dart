import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transactions_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({Key? key, required this.transactionsModel}) : super(key: key);

  final TransactionsModel transactionsModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xffFAFAFA),
      child: ListTile(
        title: Text(transactionsModel.title,
          style: AppStyles.styleSemiBold16(context),
        ),
        subtitle: Text(transactionsModel.date,
          style: AppStyles.styleRegular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(transactionsModel.amount,
          style: AppStyles.styleSemiBold20(context).copyWith(
            color:  transactionsModel.isWithdrawal? const Color(0xFFF3735E):const Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
