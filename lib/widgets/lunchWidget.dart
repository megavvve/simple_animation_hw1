import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class lunchWidget extends StatefulWidget {
  const lunchWidget({super.key});

  @override
  State<lunchWidget> createState() => _lunchWidgetState();
}

class _lunchWidgetState extends State<lunchWidget> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height/2.1, 
      left:30.w,
      child: UnconstrainedBox(
        child: InkWell(
          onTap: () {
            setState(() {
              _isExpanded = !_isExpanded;
            });
          },
          child: TweenAnimationBuilder(
            
              tween: Tween<double>(
                  begin:_isExpanded ? 66.h:200.h,
                  end: _isExpanded ? 200.h : 66.h),
              duration: const Duration(seconds: 3),
              curve: Curves.bounceOut,
              builder: (_, double height, __) {
                return Container(
                  padding: EdgeInsets.symmetric(vertical: 19.h, horizontal: 12.w),
                  width: 299.w,//299.w
                  height: height,//66
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
                  child:_isExpanded ? Center(child: Text('Пока что здесь расписания нет(',style: TextStyle(fontSize: 28.h,fontWeight: FontWeight.bold),)):Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      
                      Text(
                         '13:15 Обед',
                        style: TextStyle(
                          fontSize: 26.h,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Icon(
                        Icons.chevron_right,
                        size: 26.h,
                      )
                    ],
                  ),
                );
              }),
        ),
      ),
    );
  }
}
