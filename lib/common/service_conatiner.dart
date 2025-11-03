import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ServiceConatiner extends StatelessWidget {
  final String text;
  final IconData icon;
  const ServiceConatiner({super.key, required this.text, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: 82,
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
        child: Column(children: [Icon(icon), Text(text)]),
      ),
    );
  }
}
