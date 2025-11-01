import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
       
        children: 
      [
        
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
              
                children: [Padding(
                  padding:  EdgeInsets.only(left: 2.h),
                  child: Text("Good Morning \n uinova ", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                ), Spacer(),Icon(Icons.notifications), SizedBox(width: 2.h,) ,Padding(
                  padding:  EdgeInsets.only(right: 2.h),
                  child: CircleAvatar(backgroundImage: AssetImage("assets/images/person.png"),),
                )],)
              ),
              
      ],),
    );
  }
}
