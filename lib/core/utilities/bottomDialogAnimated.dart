import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:madrasa_task/core/utilities/app_colors.dart';

class animatedDialog extends StatefulWidget {
  Widget child;

  animatedDialog(this.child);

  @override
  State<StatefulWidget> createState() => animatedDialogState();
}

class animatedDialogState extends State<animatedDialog>
    with SingleTickerProviderStateMixin {
  AnimationController? controller;
  Animation<Offset>? offset;

  @override
  void initState() {
    super.initState();

    controller =
        AnimationController(vsync: this, duration: Duration(milliseconds: 500));

    offset = Tween<Offset>(begin: Offset.zero, end: Offset(0.0, 1.0))
        .animate(controller!);
    controller!.reverse();
    ;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(.3),
      body: Stack(
        children: [
          Expanded(
              child: Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0)),
                ),
                width: 430.w,
                child: widget.child),
          ))
        ],
      ),
    );
  }

  Widget get spaceDialogWidget => Expanded(
        child: Container(),
        flex: 2,
      );
}
