import 'package:flutter/material.dart';

import '../../../utils/color.dart';

Container homeAppBar(Size size) {
  return Container(
    padding: EdgeInsets.only(top: 50, left: 15, right: 15, bottom: 15),
    height: size.height * .3,
    width: size.width,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(40),
            bottomRight: Radius.circular(40)),
        gradient: LinearGradient(
            colors: [AppColor.secondaryColor, AppColor.primaryColor],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween ,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 25),

                ),
                Text(
                  'Good Morning',
                  style: TextStyle(
                      color: Colors.white.withOpacity(.5),
                      fontSize: 20,
                      fontWeight: FontWeight.w500),

                ),
              ],
            ),
            Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: AppColor.secondaryColor,
                shape: BoxShape.circle,
              ),
              child: Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Icon(
                      Icons.notifications,
                      color: Colors.white.withOpacity(.3),
                    ),
                    Positioned(
                      left: 10,
                      top: 5,
                      child: Container(
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                            color: Colors.orange,
                            shape: BoxShape.circle,
                            border: Border.all(
                                color: AppColor.primaryColor,
                                width: 2
                            )
                        ),
                      ),
                    )
                  ]
              ),

            ),
          ],
        ),
        TextFormField(
          decoration: InputDecoration(
              suffixIcon: Icon(Icons.mic,color: AppColor.primaryColor,),
              prefixIcon: Icon(Icons.search,color: Colors.black.withOpacity(.5)),
              hintText: 'Search Your Topic',
              filled: true,
              fillColor: Colors.white,
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(40),
                  borderSide: BorderSide(
                    width: 0,
                  )


              )
          ),

        ),
      ],
    ),
  );
}