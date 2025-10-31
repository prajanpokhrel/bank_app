import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.amber,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/images/logo-new.png", width: 200),
                        SizedBox(width: 2.h),
                        Icon(Icons.language_rounded),
                        SizedBox(width: 2.h),
                        Icon(Icons.sms),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}