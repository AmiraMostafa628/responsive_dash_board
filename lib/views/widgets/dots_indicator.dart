import 'package:flutter/material.dart';
import 'package:responsive_dash_board/views/widgets/custom_dots_indicator.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({Key? key, required this.currentIndex}) : super(key: key);

  final int currentIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(3, (index) =>  Padding(
        padding: const EdgeInsets.only(right: 6.0),
        child: CustomDotsIndicator(isActive: index == currentIndex),
      )),
    );
  }
}
