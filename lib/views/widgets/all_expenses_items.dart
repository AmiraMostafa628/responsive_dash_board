import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/views/widgets/selected_and_unselected_expenses_item.dart';


class AllExpensesItems extends StatefulWidget  {
  const AllExpensesItems({Key? key, required this.itemModel, required this.isSelected}) : super(key: key);

 final AllExpensesItemModel itemModel;
 final bool isSelected;

  @override
  State<AllExpensesItems> createState() => _AllExpensesItemsState();
}

class _AllExpensesItemsState extends State<AllExpensesItems> with SingleTickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
        firstChild:  AllExpensesSelectedItem(itemModel: widget.itemModel),
        secondChild:  AllExpensesUnSelectedItem(itemModel: widget.itemModel),
        crossFadeState:  widget.isSelected?CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: const Duration(seconds: 1),
    );

  }
}



