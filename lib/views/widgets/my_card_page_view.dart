import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/my_card.dart';

class MyCardPageView extends StatelessWidget {
  const MyCardPageView({Key? key, required this.pageController}) : super(key: key);

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      scrollDirection: Axis.horizontal,
        children: List.generate(3, (index) => const MyCard()) );
  }
}
