import 'package:flutter/material.dart';
import 'package:second/utils/color.dart';
import 'package:second/view/home/wiget/appBar.dart';
import 'package:second/wigets/custom_category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    List<dynamic> categories = [
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Accounting',
        'total': 100
      },
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Accounting',
        'total': 100
      },
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Accounting',
        'total': 100
      },
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Accounting',
        'total': 100
      },
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Marketing',
        'total': 100
      },
      {
        'icon': 'assets/images/accounting.jpg',
        'name': 'Accounting',
        'total': 100
      },
    ];
    return Scaffold(
      body: Column(
        children: [
          homeAppBar(size),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Explore categories',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'See All',
                          style: TextStyle(
                              color: AppColor.primaryColor,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                    GridView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: categories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: .9,
                          crossAxisSpacing: 15.0,
                          mainAxisSpacing: 15.0,
                          crossAxisCount: 2),
                      itemBuilder: (context, index) {
                        return CustomCategory(data: categories[index],);
                      },
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
