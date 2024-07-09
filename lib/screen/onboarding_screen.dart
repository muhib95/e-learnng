import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:second/utils/color.dart';
import 'package:second/view/home/home_page.dart';
import 'package:second/view/navigationBar/navigation_bar.dart';
import 'package:second/wigets/custom_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);

    return Scaffold(
      // backgroundColor: Color(0xFF7455F7),
      body: Container(
        decoration: BoxDecoration(color: AppColor.primaryColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(),
            Image.asset('assets/images/logo.png'),
            Container(
              width: size.width * .9,
              height: size.height * .35,
              margin: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'Discover your next skill\nLearn anything you want',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.8),
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    'Discover the things you want to\nlearn and grow with them',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black.withOpacity(.5),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                  ),
                  // Container(
                  //   width: size.width * .4,
                  //   padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  //   decoration: BoxDecoration(
                  //     boxShadow: [
                  //       BoxShadow(
                  //         color: AppColor.primaryColor.withOpacity(.3),
                  //         blurRadius: 10,
                  //         spreadRadius: 5,
                  //         offset: Offset(3,5)
                  //       )
                  //     ],
                  //     color: AppColor.primaryColor,
                  //     borderRadius: BorderRadius.circular(10),
                  //   ),
                  //   child: Center(
                  //     child: Text(
                  //       'Get Started',
                  //       style: TextStyle(
                  //           color: Colors.white, fontWeight: FontWeight.w700),
                  //     ),
                  //   ),
                  // )
                  CustomButton(
                    buttonText: 'Get Started',
                    customWidth: size.width * .4,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavigationBarBottom(),
                          ));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
