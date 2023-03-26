import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class firstWidget extends StatefulWidget {
  const firstWidget({super.key});

  @override
  State<firstWidget> createState() => _firstWidgetState();
}

class _firstWidgetState extends State<firstWidget> {
  var toogle = true;
  var _money = 1500;
  var _stateMoney = "Потратить";
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height/10, 
      left: -100.w,
      right: 0,
      child: UnconstrainedBox(
        child: TweenAnimationBuilder(
            duration: Duration(seconds: 4),
            curve: Curves.linear,
            tween: toogle
                ? Tween(begin: -12.0, end: 12.0)
                : Tween(begin: 12.0, end: -12.0),
            builder: (BuildContext context, dynamic value, child) {
              return Transform.rotate(
                angle: -math.pi.toDouble() / value,
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 12.w),
                  width: 254.w,
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
                        'Баланс монет: ${_money} 💸',
                        style:
                            TextStyle(fontSize: 19.h, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      ElevatedButton(
                        onPressed: () {
                          setState(() {
                            toogle = !toogle;
                            if (_money == 0) {
                              _money = 1500;
                            } else {
                              _money = 0;
                            }
                            if (_stateMoney == 'Потратить') {
                              _stateMoney = 'Накопить';
                            } else {
                              _stateMoney = 'Потратить';
                            }
                          });
                        },
                        style: ButtonStyle(
                          fixedSize: MaterialStateProperty.all(const Size(186, 43)),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.lightBlue.shade100),
                        ),
                        child: Text(_stateMoney,
                            style: TextStyle(color: Colors.blue, fontSize: 15.h)),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
