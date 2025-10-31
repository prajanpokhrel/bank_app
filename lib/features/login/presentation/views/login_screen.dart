import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:siddhartha_bank_ui/common/bottom.dart';

import 'package:siddhartha_bank_ui/common/top_container.dart';
import 'package:siddhartha_bank_ui/common/white_conatiner.dart';

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
            TopContainer(),
            WhiteConatiner(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          
        },
        child: const Icon(
          
          color:Colors.black, Icons.qr_code),
        backgroundColor: Colors.amber,
        shape: const CircleBorder(), //
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // BottomAppBar with a notch
      bottomNavigationBar: AnimatedBottomBar(),
    );
    
    
  }
}
