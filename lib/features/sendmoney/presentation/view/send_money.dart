import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/sendmoney_container/send_money_container.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
              color: Colors.amber,
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 3.h, vertical: 5.h),
              child: Text(
                "Send Money",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ),

          Transform.translate(
            offset: Offset(0, -30),
            child: SendMoneyContainer(
              text: 'Same Bank Fund Transfer',
              subText: 'Transfer to same bank',
              imagePath: 'assets/icons/payment.png',
            ),
          ),
          SizedBox(height: 1.h),
          Transform.translate(
            offset: Offset(0, -30),
            child: SendMoneyContainer(
              text: 'Other Bank Transfer Via Fonepay',
              subText: 'Transfer Via fonepay',
              imagePath: 'assets/icons/payment.png',
            ),
          ),
          SizedBox(height: 1.h),
          Transform.translate(
            offset: Offset(0, -30),
            child: SendMoneyContainer(
              text: 'Other Bank Transfer Via connect-IPS',
              subText: 'Transfer Via conect-IPS',
              imagePath: 'assets/icons/payment.png',
            ),
          ),
          SizedBox(height: 1.h),
          Transform.translate(
            offset: Offset(0, -30),
            child: SendMoneyContainer(
              text: 'Other Bank Transfer Via NPS ',
              subText: 'Transfer Via NPS',
              imagePath: 'assets/icons/payment.png',
            ),
          ),
        ],
      ),
    );
  }
}
