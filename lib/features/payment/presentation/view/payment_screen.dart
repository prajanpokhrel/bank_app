import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/bottom.dart';
import 'package:siddhartha_bank_ui/common/payment_buttons/payment_buttons.dart';
import 'package:siddhartha_bank_ui/common/service_conatiner.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
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
                  "Payments",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.translate(
                offset: Offset(0, -30), // Move UP by 30 pixels (your translate)
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 25,
                        spreadRadius: 1,
                        offset: Offset(0, 12), // Shadow translate
                      ),
                    ],
                  ),
                  child: Container(
                    width: 43.h,
                    child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.symmetric(
                          vertical: 14,
                          horizontal: 12,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white, width: 3),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        hintText: 'What do you want to pay for?',
                        hintStyle: TextStyle(color: Colors.grey),
                        prefixIcon: Icon(Icons.search, size: 35),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // payments containers
            PaymentButtons(),
            Padding(
              padding: EdgeInsets.only(right: 23.h, top: 1.h),
              child: Text(
                'Recent Payments',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ServiceConatiner(
                    text: "NT Prepaid",
                    subtext: "Topup",
                    imagePath: "assets/images/ntc.png",
                    width: 3.h,
                  ),
                  ServiceConatiner(
                    text: "KHALTI",
                    imagePath: "assets/images/khalti.png",
                    width: 7.h,
                  ),
                  ServiceConatiner(
                    text: "ESEWA",
                    imagePath: "assets/images/esewa.png",
                    width: 3.h,
                  ),
                  ServiceConatiner(
                    text: "NT CDMA",
                    subtext: "Prepaid",
                    imagePath: "assets/images/ntc.png",
                    width: 3.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ServiceConatiner(
                    text: "Ncell Topup",
                    imagePath: "assets/images/ncel.png",
                    width: 8.h,
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h, vertical: 2.h),
              child: Row(
                children: [
                  Text(
                    "Quick Payments",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    "View All",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 1.h),
                  Icon(Icons.arrow_forward_ios, size: 2.h),
                ],
              ),
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
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.5.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ServiceConatiner(
                    text: "Cardless",
                    subtext: "Withdraw",
                    imagePath: "assets/icons/cardless.png",
                    width: 3.h,
                  ),
                  SizedBox(width: .85.h),
                  ServiceConatiner(
                    text: "Mobile",
                    subtext: "Topup",
                    imagePath: "assets/icons/topup.png",
                    width: 3.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(color: Colors.black, Icons.qr_code),
        backgroundColor: Colors.amber,
        shape: const CircleBorder(), //
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // BottomAppBar with a notch
      bottomNavigationBar: AnimatedBottomBar(),
    );
  }
}
