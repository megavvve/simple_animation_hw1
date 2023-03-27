import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class CrystallBalanceWidget extends StatefulWidget {
  const CrystallBalanceWidget({super.key});

  @override
  State<CrystallBalanceWidget> createState() => _CrystallBalanceWidgetState();
}

class _CrystallBalanceWidgetState extends State<CrystallBalanceWidget> {
  int _countCrystalls = 200;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 1.26,
      left: 20.w,
      child: UnconstrainedBox(
        child: Transform.rotate(
          angle: -math.pi / 45,
          child: Container(
            padding: EdgeInsets.only(top: 23.h, left: 11.w, right: 11.w),
            width: 164.w,
            height: 169.h,
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
                  'Баланс кристаллов: $_countCrystalls 💎',
                  style: TextStyle(fontSize: 20.h, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 7.h,
                ),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _countCrystalls = 0;
                    });
                  },
                  style: ButtonStyle(
                    fixedSize: MaterialStateProperty.all(const Size(119, 43)),
                    backgroundColor:
                        MaterialStateProperty.all(Colors.lightBlue.shade100),
                  ),
                  child: Text('Потратить',
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 15.h,
                          fontWeight: FontWeight.bold)),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
