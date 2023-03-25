import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:simple_animation_hw1/widgets/firstWidget.dart';
import 'package:simple_animation_hw1/widgets/levelAchivmentWidget.dart';
import 'package:simple_animation_hw1/widgets/lunchWidget.dart';
import 'package:simple_animation_hw1/widgets/profileWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(411, 823),
      builder: (BuildContext context, child) => MaterialApp(
        title: 'My App',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 226, 226),
      body: ListView(children: [
        SizedBox(height: 80.h,),
        Row(
          children: [
            SizedBox(width: 10.w,),
            
            firstWidget(),
            SizedBox(width: 25.w,),
            profileWidget(),
          ],
        ),
        SizedBox(height: 50.h,),
        Row(
          children: [
            SizedBox(width: 90.w,),
            levelAchivmentWidget(),
          ],
          
        ),
        SizedBox(height: 30.h,),
        Row(
          children: [
            SizedBox(width: 23.w,),
            const lunchWidget(),
          ],
        ),
      ]),
    );
  }
}
