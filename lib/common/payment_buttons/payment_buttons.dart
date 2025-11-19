import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PaymentButtons extends StatelessWidget {
  const PaymentButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Transform.translate(
        offset: Offset(0, -20),
        child: Row(
          children: [
            Container(
              width: 20.6.h,
              height: 6.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.history_edu, color: Colors.white),
                  ),

                  Text(
                    "Payment History",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(width: 1.h),
            Container(
              width: 20.6.h,
              height: 6.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.savings_rounded, color: Colors.white),
                  ),

                  Text(
                    "Saved/Scheduled",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    ),
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
