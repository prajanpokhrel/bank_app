import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/bottom.dart';
import 'package:siddhartha_bank_ui/common/reward/basic_info_section.dart';
import 'package:siddhartha_bank_ui/common/reward/reward_container.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 25.h,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.amber,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 5.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Profile",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Row(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: AssetImage('assets/images/babu.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 2.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "BABU",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/mobile.png",
                                  width: 2.h,
                                ),
                                SizedBox(width: 1.h),
                                Text("9858857588"),
                              ],
                            ),
                            SizedBox(height: 1.h),
                            Container(
                              width: 11.h,
                              height: 2.5.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: Colors.black,
                              ),
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 5),
                                child: Text(
                                  "FINANCIAL",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // rewards
            Transform.translate(
              offset: Offset(0, -40),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.h),
                child: Row(
                  children: [
                    RewardContainer(),
                    SizedBox(width: 2.h),
                    RewardContainer(),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 26.h),
              child: Transform.translate(
                offset: Offset(0, -25),
                child: Text(
                  'Basic Information',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            BasicInfo(
              text: 'My Information',
              subText: 'View your basic info',
              imagePath: 'assets/icons/user.png',
              icon: Icons.arrow_forward_ios,
            ),
            SizedBox(height: 2),
            BasicInfo(
              text: 'My Subscriptions',
              subText: 'View your basic subscriptions',
              imagePath: 'assets/icons/sub.png',
              icon: Icons.arrow_forward_ios,
            ),
            SizedBox(height: 2),
            BasicInfo(
              text: 'Logout',
              subText: 'Logout this app',
              imagePath: 'assets/icons/out.png',
              icon: Icons.arrow_forward_ios,
            ),
            SizedBox(height: 2.h),
            Padding(
              padding: EdgeInsets.only(right: 26.h),
              child: Text(
                'Security Setting',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 2.h),

            BasicInfo(
              text: 'Change Password',
              subText: 'Change password',
              imagePath: 'assets/icons/lock.png',
              icon: Icons.arrow_forward_ios,
            ),
            SizedBox(height: 2),
            BasicInfo(
              text: 'Update Pin',
              subText: 'Update your Mipin',
              imagePath: 'assets/icons/out.png',
              icon: Icons.arrow_forward_ios,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(color: Colors.black, Icons.qr_code),
        backgroundColor: Colors.amber,
        shape: const CircleBorder(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomBar(
        items: [
          BottomBarItem(
            icon: Icons.home,
            label: "Home",
            onTap: () => Navigator.pushNamed(context, "/homepage"),
          ),
          BottomBarItem(
            icon: Icons.currency_rupee_sharp,
            label: "Payments",
            onTap: () => Navigator.pushNamed(context, "/payment"),
          ),
          BottomBarItem(
            icon: Icons.mobile_screen_share,
            label: "Send Money",
            onTap: () => Navigator.pushNamed(context, "/sendmoney"),
          ),
          BottomBarItem(
            icon: Icons.person,
            label: "Profile",
            onTap: () => Navigator.pushNamed(context, "/profile"),
          ),
        ],
      ),
    );
  }
}
