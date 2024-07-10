import 'package:flutter/material.dart';
import 'package:second/view/CourseDetals/course_details.dart';

class CustomCategory extends StatelessWidget {
  final dynamic data;

  const CustomCategory({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => CourseDetails(courseDetails: data),
            ));
      },
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(.1),
                blurRadius: 5,
                spreadRadius: .3,
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "${data?['icon']}",
                width: size.width * .2,
              ),
              Text('Course: ${data?['name']}'),
              Text('Total: ${data?['total']}'),
            ],
          )),
    );
  }
}
