import 'package:flutter/material.dart';
import 'package:siddhartha_bank_ui/features/homepage/presentation/views/homepage.dart';
import 'package:siddhartha_bank_ui/features/login/presentation/views/login_screen.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 0, left: 30, top: 30),
            height: 700,
            width: 300,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // shadow color
                  spreadRadius: 2, // how wide the shadow spreads
                  blurRadius: 7, // how soft the shadow looks
                  offset: Offset(3, 3), // x, y position of shadow
                ),
              ],
              color: const Color.fromARGB(255, 241, 239, 239),
            ),

            child: Column(
              children: [
                SizedBox(height: 20),
                Image.asset(
                  "assets/images/banner.png",
                  height: 600,
                  width: 280,
                ),
                SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child: Container(
                    height: 50,
                    width: 285,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        "Proceed",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
