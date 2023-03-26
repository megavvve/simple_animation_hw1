import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class profileWidget extends StatefulWidget {
  const profileWidget({super.key});

  @override
  State<profileWidget> createState() => _profileWidgetState();
}

class _profileWidgetState extends State<profileWidget> {
  var toogle = true;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height/10, 
      left: 280.h,
      
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              toogle = !toogle;
            });
          },
          child: TweenAnimationBuilder(
              duration: Duration(seconds: 2),
              tween: toogle
                  ? Tween<double>(begin: 1, end: 3)
                  : Tween<double>(begin: 3, end: 1),
              builder: (context, value, child) {
                return Transform.rotate(
                  angle: math.pi / 6,
                  child: Container(
                    width: 113.w,
                    padding: EdgeInsets.only(bottom: 15.h),
                    height: 90.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.lightBlue.withOpacity(0.2),
                          spreadRadius: 3,
                          blurRadius: 11,
                        ),
                      ],
                    ),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Профиль',
                          style: TextStyle(
                              fontSize: 20 * value, fontWeight: FontWeight.bold),
                        )),
                  ),
                );
              }),
        ),
      ),
    );
  }
}
