import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/service_conatiner.dart';

class ViewAllPaymentScreen extends StatelessWidget {
  const ViewAllPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text(
          "Quick Payments",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 1.h),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServiceConatiner(
                  text: "Load Wallet",
                  imagePath: "assets/icons/wallet.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Bill",
                  subtext: "Payments",
                  imagePath: "assets/icons/bill.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Topup",
                  imagePath: "assets/icons/topup.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Data",
                  subtext: "Package",
                  imagePath: "assets/icons/data.png",
                  width: 3.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServiceConatiner(
                  text: "Load Wallet",
                  imagePath: "assets/icons/wallet.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Bill",
                  subtext: "Payments",
                  imagePath: "assets/icons/bill.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Topup",
                  imagePath: "assets/icons/topup.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Data",
                  subtext: "Package",
                  imagePath: "assets/icons/data.png",
                  width: 3.h,
                ),
              ],
            ),
          ),
          SizedBox(height: 2.h),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 1.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ServiceConatiner(
                  text: "Load Wallet",
                  imagePath: "assets/icons/wallet.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Bill",
                  subtext: "Payments",
                  imagePath: "assets/icons/bill.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Topup",
                  imagePath: "assets/icons/topup.png",
                  width: 3.h,
                ),
                ServiceConatiner(
                  text: "Data",
                  subtext: "Package",
                  imagePath: "assets/icons/data.png",
                  width: 3.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
