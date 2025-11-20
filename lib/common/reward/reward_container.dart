import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class RewardContainer extends StatelessWidget {
  const RewardContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 18.h,
      width: 21.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 25,
            spreadRadius: 1,
            offset: Offset(0, 12),
          ),
        ],
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 5.h,
              height: 5.h,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 252, 238, 243),
                shape: BoxShape.circle,
              ),

              child: Center(
                child: Image.asset(
                  fit: BoxFit.contain,
                  "assets/icons/trophy.png",
                  height: 3.h,
                ),
              ),
            ),
            SizedBox(height: 2.h),
            Text("Bank is UnKnown"),
            SizedBox(height: 1.h),
            Row(
              children: [
                Text(
                  "37",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(width: 3),
                Text(
                  'Points',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 85, 84, 84),
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
