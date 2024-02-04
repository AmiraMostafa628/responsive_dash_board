import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/size_config.dart';

abstract class AppStyles{

  static TextStyle styleRegular16(context){
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }


  static TextStyle styleMedium16(context) {
    return  TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(context){
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(context)
  {
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleMedium20(context){
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold20(context){
    return TextStyle(
      color: const Color(0xFF064060),
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular12(context){
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(context){
    return TextStyle(
      color: const Color(0xFF4EB7F2),
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(context){
    return TextStyle(
      color: const Color(0xFFAAAAAA),
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(context){
    return TextStyle(
      color: const Color(0xFFFFFFFF),
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

}


double getResponsiveFontSize(BuildContext context,{required double fontSize})
{
  double scaleFactor = getScaleFactor(context);

  double responsiveFontSize = fontSize *scaleFactor;

  double lowerLimit = fontSize *.8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}


double getScaleFactor(BuildContext context){
  double width = MediaQuery.sizeOf(context).width;
  if(width <SizeConfig.tablet){
      return width/550;
    }
  else if(width <SizeConfig.desktop)
  {
    return width/1000;
  }
  else
  {
    return width/1800;
  }
}

// another way to axis the width of screen in the tablet and mobile
// because doesn't need to rebuild everytime as web that MediaQuery is better for it
/*
var dispatcher = PlatformDispatcher.instance;
var physicalWidth = dispatcher.views.first.physicalSize.width;
var devicePixelRatio = dispatcher.views.first.devicePixelRatio;

double width = physicalWidth/devicePixelRatio;*/
