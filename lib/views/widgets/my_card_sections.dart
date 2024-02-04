import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/views/widgets/dots_indicator.dart';
import 'package:responsive_dash_board/views/widgets/my_card_page_view.dart';

class MyCardSections extends StatefulWidget {
  const MyCardSections({Key? key}) : super(key: key);

  @override
  State<MyCardSections> createState() => _MyCardSectionsState();
}

class _MyCardSectionsState extends State<MyCardSections> {
  late PageController pageController;
  int currentIndex = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentIndex = pageController.page!.round();
      setState(() {});
    });


    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         SizedBox(
          width: 420,
            child: Text('My card',
              style: AppStyles.styleSemiBold20(context),
            )),
        const SizedBox(
          height: 20,
        ),
        MyCardPageView(
          pageController: pageController,
        ),
        const SizedBox(
          height: 20,
        ),
        DotsIndicator(currentIndex: currentIndex,),

      ],
    );
  }
}
