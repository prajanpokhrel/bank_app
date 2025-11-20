import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/bottom.dart';
import 'package:siddhartha_bank_ui/common/editbutton/edit_button.dart';
import 'package:siddhartha_bank_ui/common/service_conatiner.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
                color: Colors.amber,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "Good Morning \n uinova ",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Spacer(),
                  Icon(Icons.notifications),
                  SizedBox(width: 2.h),
                  Padding(
                    padding: EdgeInsets.only(right: 2.h),
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/person.png"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Transform.translate(
                offset: Offset(0, -30),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(18),
                    fillColor: Colors.white,
                    filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: 'Search ',
                    prefixIcon: Icon(size: 35, Icons.search),
                  ),
                  onChanged: (value) {},
                ),
              ),
            ),
            Transform.translate(
              offset: Offset(0, -20),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 9.h),
                    child: Container(
                      height: 25,
                      width: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: const Color.fromARGB(255, 210, 209, 209),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.watch_later,
                            color: const Color.fromARGB(255, 80, 79, 79),
                          ),
                          Text("Last Logged in 3 Nov , 2025 at 9:07 PM"),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8, right: 8),
                    child: Container(
                      height: 100,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(6),
                          bottomRight: Radius.circular(6),
                          topRight: Radius.circular(6),
                        ),
                        color: Colors.amber,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("XXXXXXX"),
                            Row(
                              children: [
                                Text(
                                  "12,0000",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 1.h),
                                Icon(Icons.visibility),
                                Spacer(),
                                Image.asset(
                                  width: 80,
                                  height: 40,
                                  "assets/images/icon.png",
                                ),
                                Icon(Icons.arrow_forward_ios),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ServiceConatiner(
                      text: "Statement",
                      imagePath: "assets/icons/statement.png",
                      width: 3.h,
                    ),
                  ),

                  ServiceConatiner(
                    text: " My",
                    subtext: "Accounts",
                    imagePath: "assets/icons/wallet.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "Saved",
                    subtext: "Payments",
                    imagePath: "assets/icons/payment.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "Mobile",
                    subtext: "Topup",
                    imagePath: "assets/icons/topup.png",
                    width: 3.h,
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            EditButton(),
            Padding(
              padding: EdgeInsets.only(right: 23.h),
              child: Text(
                "Service Request",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 1.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ServiceConatiner(
                      text: "EasyBank",
                      imagePath: "assets/icons/bank-building.png",
                      width: 3.h,
                    ),
                  ),

                  ServiceConatiner(
                    text: " Transaction",
                    subtext: "Dispute",
                    imagePath: "assets/icons/transaction.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "Fixed",
                    subtext: 'Deposit',
                    imagePath: "assets/icons/business.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "New Credit",
                    subtext: "Card",
                    imagePath: "assets/icons/credit-card.png",
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
                  GestureDetector(
                    onTap: () {},
                    child: ServiceConatiner(
                      text: "Siddhartha",
                      subtext: "Rewards",

                      imagePath: "assets/icons/trophy.png",
                      width: 3.h,
                    ),
                  ),

                  ServiceConatiner(
                    text: "Debit Card",
                    subtext: "Replacement",
                    imagePath: "assets/icons/donation.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "Debit Cards",
                    subtext: "Renew",
                    imagePath: "assets/icons/money.png",
                    width: 3.h,
                  ),

                  ServiceConatiner(
                    text: "Cheque",
                    subtext: "Books",
                    imagePath: "assets/icons/cheque-line.png",
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
            onTap: () => Navigator.pushNamed(context, "/sendmoney"),
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
