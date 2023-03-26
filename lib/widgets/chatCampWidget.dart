import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'dart:math' as math;

class ChatCampWidget extends StatefulWidget {
  const ChatCampWidget({super.key});

  @override
  State<ChatCampWidget> createState() => _ChatCampWidgetState();
}

class _ChatCampWidgetState extends State<ChatCampWidget> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 1.75,
      left: 30.w,
      child: UnconstrainedBox(
        child: TweenAnimationBuilder(
            duration: const Duration(seconds: 4),
            curve: Curves.bounceOut,
            tween: Tween<double>(
                begin: _isExpanded ? -45 : 45, end: _isExpanded ? 45 : -45),
            builder: (BuildContext context, dynamic value, Widget? child) {
              return Transform.rotate(
                angle: -math.pi / 45,
                child: Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  height: 169.h,
                  width: 354.w,
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
                  child: Stack(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Сейчас идет',
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 15.h,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            '1 Смена 2022',
                            style: TextStyle(
                                fontSize: 28.h, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            'Корпус №3       Отряд №2',
                            style: TextStyle(
                                fontSize: 15.h, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Transform.rotate(
                          angle: -math.pi.toDouble() / value,
                          child: ElevatedButton(
                            onPressed: () {
                              setState(() {
                                _isExpanded = !_isExpanded;
                              });
                            },
                            style: ButtonStyle(
                              fixedSize: MaterialStateProperty.all(
                                  const Size(324, 40)),
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.lightBlue.shade100),
                            ),
                            child: Text('Чат отряда (3 сообщ.)',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15.h,
                                    fontWeight: FontWeight.bold)),
                          ),
                        ),
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
