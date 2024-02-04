
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_items_header.dart';

class AllExpensesUnSelectedItem extends StatelessWidget {
  const AllExpensesUnSelectedItem({
  super.key,
  required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ALLExpensesItemsHeader(image: itemModel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.title,
              style: AppStyles.styleMedium16(context),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.date,
              style: AppStyles.styleRegular14(context),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.price,
              style: AppStyles.styleSemiBold24(context),
            ),
          )
        ],
      ),
    );
  }
}

class AllExpensesSelectedItem extends StatelessWidget {
  const AllExpensesSelectedItem({
  super.key,
  required this.itemModel,
  });

  final AllExpensesItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 14),
      decoration: ShapeDecoration(
        color: const Color(0xFF4DB7F2),
        shape: RoundedRectangleBorder(
          side: const BorderSide(width: 1, color: Color(0xFFF1F1F1)),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ALLExpensesItemsHeader(image: itemModel.image,
            imageBackgroundColor: Colors.white.withOpacity(0.10000000149011612),
            imageColor:Colors.white,
            arrowColor: Colors.white,

          ),
          const SizedBox(
            height: 34,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.title,
              style: AppStyles.styleSemiBold16(context).copyWith(
                  color: Colors.white
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.date,
              style: AppStyles.styleRegular14(context).copyWith(
                  color: const Color(0xFFFAFAFA)
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(itemModel.price,
              style: AppStyles.styleSemiBold24(context).copyWith(
                  color: Colors.white
              ),
            ),
          )
        ],
      ),
    );
  }
}
