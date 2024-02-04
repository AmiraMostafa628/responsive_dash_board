import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction_list_view.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_form.dart';

class LatestTransaction extends StatelessWidget {
  const LatestTransaction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Latest Transaction',
          style: AppStyles.styleMedium16(context),
        ),
        const SizedBox(
          height: 12,
        ),
        const LatestTransactionListView(),
        const Divider(
          height: 48,
          color: Color(0xffF1F1F1),
        ),
        const QuickInvoiceForm()




      ],
    );
  }
}
