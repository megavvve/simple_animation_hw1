import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class levelAchivmentWidget extends StatefulWidget {
  const levelAchivmentWidget({super.key});

  @override
  State<levelAchivmentWidget> createState() => _levelAchivmentWidgetState();
}

class _levelAchivmentWidgetState extends State<levelAchivmentWidget> {
  int _level = 5;
  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: math.pi / 16,
      child: Container(
        padding: EdgeInsets.all(14.w),
        width: 300.w,
        height: 122.h,
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
        child: Column(
          children: [
            Text(
              'Уровень достижений: ${_level}',
              style: TextStyle(fontSize: 20.h, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.h,
            ),
            Stack(
              
              children:[ Container(
                height: 32.h,
                width: 220.w,
                
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey.shade200,
                  
                ),
              ),
              Container(
                width:159.w ,
                height: 32.h,
                 decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreenAccent,
                  
                ),
              )]
            ),
          ],
        ),
      ),
    );
    ;
  }
}