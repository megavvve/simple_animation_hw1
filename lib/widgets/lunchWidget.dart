import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class lunchWidget extends StatefulWidget {
  const lunchWidget({super.key});

  @override
  State<lunchWidget> createState() => _lunchWidgetState();
}

class _lunchWidgetState extends State<lunchWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      padding: EdgeInsets.symmetric(vertical: 19.h,horizontal: 12.w),
    width: 299.w,
    height: 66.h,
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('13:15 Обед',style: TextStyle(
            fontSize: 26.h,
            fontWeight:FontWeight.bold,
          ),),
          Icon(Icons.chevron_right,size: 26.h,)
        ],
      ),
    );;
  }
}