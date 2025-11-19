import 'package:flutter/material.dart';

import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/button.dart';
import 'package:siddhartha_bank_ui/common/faceid/face_id.dart';
import 'package:siddhartha_bank_ui/common/textform/password_field.dart';
import 'package:siddhartha_bank_ui/common/textform/text_form.dart';
import 'package:siddhartha_bank_ui/features/homepage/presentation/views/homepage.dart';

class WhiteConatiner extends StatelessWidget {
  const WhiteConatiner({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -50),
      child: Center(
        child: Container(
          height: 380,
          width: 360,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5), // shadow color
                spreadRadius: 2, // how wide the shadow spreads
                blurRadius: 7, // how soft the shadow looks
                offset: Offset(3, 3), // x, y position of shadow
              ),
            ],
            borderRadius: BorderRadius.circular(4),
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Good Morning,", style: TextStyle(fontSize: 16)),
                    SizedBox(width: 4),
                    Text(
                      "PRAJAN",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              TextForms(
                text: 'Number',

                prefixicons: Icon(Icons.phone_android, color: Colors.grey),
              ),
              SizedBox(height: 2.h),
              PasswordField(
                text: 'Password',

                prefixicons: Icon(Icons.lock, color: Colors.grey),
              ),

              SizedBox(height: 2.h),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  children: [
                    Icon(Icons.check_box, color: Colors.amber),
                    SizedBox(width: 4),
                    Text("Rememeber Me"),
                  ],
                ),
              ),
              SizedBox(height: 2.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(
                          (context),
                          MaterialPageRoute(builder: (context) => Homepage()),
                        );
                      },
                      child: CommonButton(
                        height: 50,
                        width: 240,
                        text: 'Login',
                      ),
                    ),
                    SizedBox(width: 1.h),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(color: Colors.grey, width: 2),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        padding: EdgeInsets.all(12),
                      ),

                      child: const FaceIDVideo(),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 1.h),
              Text(
                "New to Siddhartha BankSmart XP?",
                style: TextStyle(
                  color: const Color.fromARGB(255, 115, 114, 114),
                ),
              ),
              SizedBox(height: 1.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Register/Activate",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 1.h),
                  Text("or "),
                  Text(
                    "Forgot Password?",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              GestureDetector(
                onTap: () {
                  print("clicked");
                },
                child: Text(
                  "Need Help?",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: const Color.fromARGB(255, 101, 98, 98),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
