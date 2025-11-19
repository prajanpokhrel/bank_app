import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SendMoneyContainer extends StatelessWidget {
  final String text;
  final String subText;
  final String imagePath;

  const SendMoneyContainer({
    super.key,
    required this.text,
    required this.subText,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43.h,
      height: 9.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 30,
            spreadRadius: 5,
            offset: Offset(0, 12),
          ),
        ],
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 2.h),
        child: Row(
          children: [
            Image.asset(width: 3.h, imagePath),
            SizedBox(width: 2.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
                Text(subText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
