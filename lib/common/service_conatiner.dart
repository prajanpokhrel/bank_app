import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceConatiner extends StatelessWidget {
  final String text;
  final String? subtext;
  final String imagePath;
  final double width;
  const ServiceConatiner({
    super.key,
    required this.text,
    required this.imagePath,
    this.subtext,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: 88,
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
        padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2),
        child: Column(
          children: [
            Image.asset(width: width, imagePath),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 2, vertical: 1.h),
              child: Column(
                children: [
                  Text(
                    text,
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                  ),
                  if (subtext != null) ...[
                    Text(
                      subtext!,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
