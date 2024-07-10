import 'package:flutter/material.dart';
import 'package:second/screen/onboarding_screen.dart';
import 'package:second/utils/color.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColor.backgroundColor,
      ),
      home: OnboardingScreen(),
    );
  }
}
