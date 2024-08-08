import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/CustomText.dart';
import 'package:madrasa_task/core/utilities/CustomTextStyle.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';
import 'package:madrasa_task/core/utilities/bottomDialogAnimated.dart';
import 'package:madrasa_task/core/utilities/custom_bottom_sheet_dialog.dart';
import 'package:madrasa_task/core/utilities/imageHelper.dart';
import 'package:madrasa_task/core/utilities/imageSlider.dart';
import 'package:madrasa_task/generated/l10n.dart';
import 'package:madrasa_task/presentation/Register/view/register_screen.dart';
class ViewHelper {
  final BuildContext context;
  final bool fullScreen;

  ViewHelper(this.context, {this.fullScreen = false});

  Future<dynamic> pushScreen(dynamic widget,
      {bool hasBackStack = false}) async {
    if (!hasBackStack)
      return Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
    else
      return Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => widget,
          ));
  }

  showDoneDialog(text, done, context) {
    return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: done ? 3 : 200), () {
            Navigator.pop(context);
          });
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
            title: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  done
                      ? Icon(
                    Icons.check,
                    color: greenColor,
                    size: 25.sp,
                  )
                      : imageHelper('',57.w, 50.h, ImageType.svg, BoxFit.fill),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: '$text',
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    customTextStyle: BoldStyle(
                      fontSize: 17.sp,
                      color: done ? blackColorHome : redColor,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),

                ],
              ),
            ),
          );
        });
  }

  showDoneDialogTime(text, done) {
    return showDialog(
        context: context,
        builder: (context) {
          Future.delayed(Duration(seconds: 2), () {
            Navigator.of(context).pop(true);
          });
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
            title: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  done
                      ? Icon(
                    Icons.check,
                    color: greenColor,
                    size: 25.sp,
                  )
                      : imageHelper(
                      'error', 57.w, 50.h, ImageType.svg, BoxFit.fill),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: '$text',
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    customTextStyle: BoldStyle(
                      fontSize: 17.sp,
                      color: blackColorHome,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  done
                      ? Container()
                      : InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: whiteColor,
                        border: Border.all(color: backGround),
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0.r)),
                      ),
                      width: 390.w,
                      alignment: Alignment.center,
                      height: 53.h,
                      child: CustomText(
                        text: S.current.ok,
                        textAlign: TextAlign.center,
                        customTextStyle:
                        BoldStyle(color: backGround, fontSize: 20.sp),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  showTermsDialog(text) {
    return showDialog(
        context: context,
        builder: (context) {
          /* Future.delayed(Duration(seconds: done ? 1 : 8), () {
            Navigator.of(context).pop(true);
          });*/
          return AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
            title: Container(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomText(
                    text: text,
                    maxLines: 4,
                    textAlign: TextAlign.center,
                    customTextStyle: BoldStyle(
                      fontSize: 17.sp,
                      color: backGround,
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                ],
              ),
            ),
          );
        });
  }

  showAlertDialog(widget) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
              insetPadding: EdgeInsets.symmetric(horizontal: 8.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(12.r)),
              ),
              title: widget);
        });
  }

  showSnakeBar(String text,
      {SnackBarAction? action,
        Color snakeColorBackGround = greenColor,
        Color textColor = Colors.white,
        double elevation = 0.0,
        int durationInMilliSeconds = 2000}) async {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Container(
        alignment: Alignment.center,
        height: 40.h,
        child: CustomText(
          text: text,
          customTextStyle: BoldStyle(fontSize: 15.sp, color: Colors.white),
        ),
      ),
      backgroundColor: snakeColorBackGround,
      elevation: elevation,
      behavior: SnackBarBehavior.floating,
      action: action,
      padding:
      EdgeInsets.only(left: 16.0.w, right: 16.0.w, top: 6.h, bottom: 6.h),
      duration: Duration(milliseconds: durationInMilliSeconds),
    ));
  }

  snakeBar(title, message) async {
    await Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      title: title,
      message: message,
      backgroundColor: buttonColor,
      duration: Duration(seconds: 30),
    ).show(context);
  }

  void showCustomBottomSheetFullScreen(Widget child,
      {Function(dynamic result)? onUpdate}) {
    showAnimatedDialog(
        context: context,
        builder: (context) =>
            CustomBottomSheetDialog(
              child: child,
              fullScreen: false,
            ),
        curve: Curves.fastOutSlowIn,
        alignment: Alignment.center,
        axis: Axis.vertical,
        animationType: DialogTransitionType.slideFromBottomFade,
        duration: Duration(milliseconds: 500),
        barrierDismissible: false,
        barrierColor: Colors.transparent)
        .then((value) {
      if (onUpdate != null) onUpdate(value);
    });
  }

  void callBottom(page) {
    Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => page,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.fastOutSlowIn;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

          return Container(
            color: new Color.fromRGBO(255, 0, 0, 0.5),
            child: SlideTransition(
              position: animation.drive(tween),
              child: child,
            ),
          );
        }));
  }

  void newDialog(Widget child, {Function(dynamic result)? onUpdate}) {
    showAnimatedDialog(
        context: context,
        builder: (context) => animatedDialog(child),
        curve: Curves.fastOutSlowIn,
        alignment: Alignment.center,
        axis: Axis.vertical,
        animationType: DialogTransitionType.slideFromBottomFade,
        duration: Duration(milliseconds: 500),
        barrierDismissible: false,
        barrierColor: Colors.transparent)
        .then((value) {
      if (onUpdate != null) onUpdate(value);
    });
  }
  void openRegisterWidget(){
    pushScreen(RegisterScreen());
  }
}