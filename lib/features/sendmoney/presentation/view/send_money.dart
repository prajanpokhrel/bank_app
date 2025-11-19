import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/bottom.dart';
import 'package:siddhartha_bank_ui/common/favourite_account_container/favourite_account.dart';
import 'package:siddhartha_bank_ui/common/payment_buttons/payment_buttons.dart';
import 'package:siddhartha_bank_ui/common/sendmoney_container/send_money_container.dart';

class SendMoney extends StatelessWidget {
  const SendMoney({super.key});

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
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 1.h),
                  Icon(Icons.arrow_forward_ios, size: 2.h),
                ],
              ),
            ),
            FavouriteAccount(
              text: 'RAJU',
              subText: "Account Number .286467474884",
              imagePath: 'assets/images/pose.png',
              bankName: 'Laxmi Chaeat Fund',
            ),
            SizedBox(height: 1.h),
            FavouriteAccount(
              text: 'BABURAO',
              subText: "Account Number .1942000",
              imagePath: 'assets/images/babu.png',
              bankName: 'Laxmi Chaeat Fund',
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
      bottomNavigationBar: AnimatedBottomBar(
        items: [
          BottomBarItem(
            icon: Icons.home,
            label: "Home",
            onTap: () => Navigator.pushNamed(context, "/"),
          ),
          BottomBarItem(
            icon: Icons.currency_rupee_sharp,
            label: "Payments",
            onTap: () => Navigator.pushNamed(context, "/payment"),
          ),
          BottomBarItem(
            icon: Icons.mobile_screen_share,
            label: "Send Money",
            onTap: () => Navigator.pushNamed(context, "/products"),
          ),
          BottomBarItem(
            icon: Icons.person,
            label: "Profile",
            onTap: () => Navigator.pushNamed(context, "/more"),
          ),
        ],
      ),
    );
  }
}
