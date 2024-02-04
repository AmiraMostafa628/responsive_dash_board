import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ALLExpensesItemsHeader extends StatelessWidget {
  const ALLExpensesItemsHeader({Key? key,
    required this.image, this.arrowColor,
    this.imageBackgroundColor,
    this.imageColor}) : super(key: key);

  final String image;
  final Color? imageColor;
  final Color? imageBackgroundColor;
  final Color? arrowColor;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 60),
            child: AspectRatio(
              aspectRatio: 1,
              child: Container(
                decoration: ShapeDecoration(
                  color: imageBackgroundColor?? const Color(0xFFFAFAFA),
                  shape: const OvalBorder(),
                ),
                child: Center(
                  child: SvgPicture.asset(image,
                    colorFilter: ColorFilter.mode(imageColor??const Color(0xFF4EB7F2), BlendMode.srcIn),

                  ),
                ),
                ),
            ),
          ),
        ),
        const Spacer(),
        Transform.rotate(
          angle: 3.14159265,
          child:  Icon(
            Icons.arrow_back_ios_new_outlined,
            color: arrowColor??const Color(0xFF064060),
          ),
        ),

      ],
    );
  }
}
