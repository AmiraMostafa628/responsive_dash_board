import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/item_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class ChartDetails extends StatelessWidget {
  const ChartDetails({Key? key}) : super(key: key);
  
  static const items = [
    ItemsDetailsModel(color: Color(0xFF208BC7),
        title: 'Design service', value: '40%'),
    ItemsDetailsModel(color: Color(0xFF4EB7F2),
        title: 'Design product', value: '25%'),
    ItemsDetailsModel(color: Color(0xFF064061),
        title: 'Product royalti', value: '20%'),
    ItemsDetailsModel(color: Color(0xFFE2DECD),
        title: 'Other', value: '22%'),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => ItemsDetails(itemsDetailsModel: e)).toList(),
    );
  }
}

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({Key? key, required this.itemsDetailsModel}) : super(key: key);

  final ItemsDetailsModel itemsDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          color: itemsDetailsModel.color,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(itemsDetailsModel.title,
        style: AppStyles.styleRegular16(context)
      ),
      trailing: Text(
        itemsDetailsModel.value,
        style: AppStyles.styleMedium16(context),
      ),
    );
  }
}

