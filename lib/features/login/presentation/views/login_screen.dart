import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/common/textform/password_field.dart';
import 'package:siddhartha_bank_ui/common/textform/text_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: const Color.fromARGB(255, 163, 123, 2),
      ),
    );
    return Scaffold(
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
            ),
            Transform.translate(
              offset: Offset(0, -50),
              child: Center(
                child: Container(
                  height: 300,
                  width: 330,
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
                            Text(
                              "Good Morning,",
                              style: TextStyle(fontSize: 16),
                            ),
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

                        prefixicons: Icon(
                          Icons.phone_android,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(height: 2.h),
                      PasswordField(
                        text: 'Password',

                        prefixicons: Icon(Icons.lock, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
