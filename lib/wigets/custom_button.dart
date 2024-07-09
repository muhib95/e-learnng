import 'package:flutter/material.dart';
import 'package:second/utils/color.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final double? customWidth;
  final void Function()? onTap;
  const CustomButton({super.key, required this.buttonText, this.customWidth, this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return InkWell(
      onTap: onTap,
      child: Container(
        width: customWidth ?? size.width * .9,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                color: AppColor.primaryColor.withOpacity(.3),
                blurRadius: 10,
                spreadRadius: 5,
                offset: Offset(3, 5))
          ],
          color: AppColor.primaryColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            buttonText,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700,fontSize: 18),
          ),
        ),
      ),
    );
  }
}
