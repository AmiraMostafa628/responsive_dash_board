import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expenses_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/views/widgets/all_expenses_items.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({
  super.key,
  });


  @override
  State<AllExpensesItemsListView> createState() => _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {

 final List<AllExpensesItemModel> items =const [
    AllExpensesItemModel(
        image:Images.balance, title:'Balance',
        date:'April 2022',price: r'$20,129'),
    AllExpensesItemModel(image:Images.income, title:'Income',
        date:'April 2022',price: r'$20,129'),
    AllExpensesItemModel(
        image:Images.expenses, title:'Expenses',
        date:'April 2022',price: r'$20,129'),

  ];
 int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(0);
            },
            child: AllExpensesItems(itemModel: items[0],
              isSelected: selectedItem==0,),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(1);
            },
            child: AllExpensesItems(itemModel: items[1],
              isSelected: selectedItem==1,),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(2);
            },
            child: AllExpensesItems(itemModel: items[2],
              isSelected: selectedItem==2,),
          ),
        ),
      ],
    );

    /*return Row(
      children: items.asMap().entries.map((e)
    {
      int index = e.key;
      var item = e.value;
        return Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(index);
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: index==1?12:0),
              child: AllExpensesItems(itemModel: item,isSelected: selectedItem==index,),
            ),
          ),
        );


      }
      ).toList(),
    );*/
  }

  void updateIndex(int index) {
     if(selectedItem !=index)
      {
      setState(() {
      selectedItem = index;
      });
      }
  }
}