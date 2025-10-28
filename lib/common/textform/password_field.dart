import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PasswordField extends StatefulWidget {
  final String text;
  final Widget? prefixicons;
  final Widget? suffixIcons;

  const PasswordField({
    super.key,
    required this.text,
    this.prefixicons,
    this.suffixIcons,
  });

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: TextFormField(
        textInputAction: TextInputAction.next,
        obscureText: _obscureText,
        decoration: InputDecoration(
          prefixIcon: widget.prefixicons,
          suffixIcon: IconButton(
            color: const Color.fromARGB(255, 243, 181, 10),
            onPressed: () {
              setState(() {
                _obscureText = !_obscureText;
              });
            },
            icon: Icon(
              _obscureText
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
            ),
          ),
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
          hintText: widget.text,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
        ),
      ),
    );
  }
}
