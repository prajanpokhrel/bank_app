import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceConatiner extends StatelessWidget {
  final String text;
  final String imagePath;
  const ServiceConatiner({
    super.key,
    required this.text,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 85,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // shadow color
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(4, 4),
          ),
        ],

        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 2.h),
        child: Column(
          children: [
            Image.asset(width: 4.h, imagePath),
            Padding(
              padding: const EdgeInsets.all(2),
              child: Text(text, style: TextStyle(fontSize: 14)),
            ),
          ],
        ),
      ),
    );
  }
}
