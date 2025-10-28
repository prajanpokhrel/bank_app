import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextForms extends StatelessWidget {
  final String text;
  final Widget? prefixicons;
  final bool obsecuretext;
  const TextForms({
    super.key,
    required this.text,
    this.prefixicons,
    required this.obsecuretext,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: TextFormField(
        textInputAction: TextInputAction.next,

        decoration: InputDecoration(
          prefixIcon: prefixicons,
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
            borderRadius: BorderRadius.circular(2),
          ),
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}
