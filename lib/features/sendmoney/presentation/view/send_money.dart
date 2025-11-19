import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/payment_buttons/payment_buttons.dart';
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
          SizedBox(height: 1.h),
          PaymentButtons(
            text: "Transfer History",
            secondPaymentText: "Saved Transfers",
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.h),
            child: Row(
              children: [
                Text(
                  "Favourite Accounts",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                GestureDetector(
                  onTap: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(width: 1.h),
                Icon(Icons.arrow_forward_ios, size: 2.h),
              ],
            ),
          ),
          Container(
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
            child: ListTile(
              leading: Padding(
                padding: EdgeInsets.symmetric(vertical: 1.h),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/pose.png"),
                ),
              ),
              title: Text(
                "RAJU",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Account Number .286467474884",
                    style: TextStyle(fontSize: 13),
                  ),
                  Text("Laxmi Cheat Fund", style: TextStyle(fontSize: 14)),
                ],
              ),
              trailing: Icon(Icons.more_horiz),
              isThreeLine: true,
            ),
          ),
        ],
      ),
    );
  }
}
