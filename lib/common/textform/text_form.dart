import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextForms extends StatelessWidget {
  const TextForms({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: TextFormField(
        textInputAction: TextInputAction.next,

        decoration: InputDecoration(
          prefixIcon: Icon(Icons.phone_android, color: Colors.grey),
          contentPadding: EdgeInsets.all(10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2),
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 141, 140, 140),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 141, 140, 140),
            ),
            borderRadius: BorderRadius.circular(14),
          ),
          hintText: "Number",
          hintStyle: TextStyle(color: Colors.grey),
        ),
      ),
    );
  }
}
