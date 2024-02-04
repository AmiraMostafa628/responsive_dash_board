import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_back_ground_container.dart';
import 'package:responsive_dash_board/views/widgets/latest_transaction.dart';
import 'package:responsive_dash_board/views/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  const CustomBackgroundContainer(child: Column(
      children: [
        QuickInvoiceHeader(),
        SizedBox(
          height: 24,
        ),
        LatestTransaction()
      ],
    ));
  }
}


