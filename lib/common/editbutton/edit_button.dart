import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EditButton extends StatelessWidget {
  const EditButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24.h),
      height: 50,
      width: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // shadow color
            spreadRadius: 2,
            blurRadius: 6,
            offset: Offset(4, 4),
          ),
        ],

        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(width: 6.w, "assets/icons/edit.png"),
          ),
          SizedBox(width: 2),
          Text(
            "Edit Menu",
            style: TextStyle(
              fontSize: 18,
              color: const Color.fromARGB(255, 229, 151, 49),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
