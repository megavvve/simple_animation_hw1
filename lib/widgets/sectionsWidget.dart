import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:flutter_screenutil/flutter_screenutil.dart';

class SectionWidget extends StatefulWidget {
  const SectionWidget({super.key});

  @override
  State<SectionWidget> createState() => _SectionWidgetState();
}

class _SectionWidgetState extends State<SectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height/1.23, 
      left: 200.w,
      child: UnconstrainedBox(
        child: Transform.rotate(
          angle: math.pi / 9,
          child: Container(
            width: 175.w,
            padding: EdgeInsets.symmetric(vertical: 20.h),
            height: 73.h,
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
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  'Секции',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                )),
          ),
        ),
      ),
    );
  }
}
