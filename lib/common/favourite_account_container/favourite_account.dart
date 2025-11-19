import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class FavouriteAccount extends StatelessWidget {
  final String text;
  final String subText;
  final String bankName;
  final String imagePath;
  const FavouriteAccount({
    super.key,
    required this.text,
    required this.subText,
    required this.imagePath,
    required this.bankName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 43.h,
      height: 9.h,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.15),
            blurRadius: 30,
            spreadRadius: 5,
            offset: Offset(0, 12),
          ),
        ],
        borderRadius: BorderRadius.circular(6),
        color: Colors.white,
      ),
      child: ListTile(
        leading: Padding(
          padding: EdgeInsets.symmetric(vertical: 1.h),
          child: CircleAvatar(backgroundImage: AssetImage(imagePath)),
        ),
        title: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subText, style: TextStyle(fontSize: 13)),
            Text(bankName, style: TextStyle(fontSize: 14)),
          ],
        ),
        trailing: Icon(Icons.more_horiz),
        isThreeLine: true,
      ),
    );
  }
}
