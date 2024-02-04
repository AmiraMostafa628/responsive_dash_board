import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_button.dart';
import 'package:responsive_dash_board/views/widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(child: TitleTextField(
                title: 'Customer name', hint: 'Type customer name')),

            SizedBox(width: 16,),

            Expanded(child: TitleTextField(
                title: 'Customer Email', hint: 'Type customer email')),
          ],
        ),
        SizedBox(height: 24,),
        Row(
          children: [
            Expanded(child: TitleTextField(
                title: 'Item name', hint: 'Type customer name')),

            SizedBox(width: 16,),

            Expanded(child: TitleTextField(
                title: 'Item mount', hint: 'USD')),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                title: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: Color(0xFF4DB7F2),
              ),),
            Expanded(
              child: CustomButton(
                title: 'Send Money',
              ),),
          ],
        ),
      ],
    );
  }
}
