import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 238, 238),
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Transform.translate(
                  offset: Offset(0, -30),
                  child: TextFormField(
                    
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(18),
                    fillColor: Colors.white,
                       filled: true,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    hintText: 'Search ',
                    prefixIcon: Icon(
                      size: 35,
                      Icons.search),
                  ),
                  onChanged: (value) {
                    
                  },
                  ),
                ),
              ),
              Transform.translate(
  offset: Offset(0, -20), // Adjust this value to move more/less
  child: Column(
    
    children: [
      Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: Container(
      
          height: 25,
          width: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: const Color.fromARGB(255, 210, 209, 209),
          ),
          child: Row(
            children: [
              Icon(Icons.watch_later, color: const Color.fromARGB(255, 80, 79, 79)),
              Text("Last Logged in 3 Nov , 2025 at 9:07 PM")
            ],
          ),
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8, right: 8),
        child: Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(),
            color: Colors.amber,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("XXXXXXX"),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Row(
                    children: [
                      Text("12,0000", style: TextStyle(fontWeight: FontWeight.bold)),
                      SizedBox(width: 1.h),
                      Icon(Icons.visibility),
                      Spacer(),
                      Icon(Icons.arrow_forward_ios)
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  ),
)
          
              

              
      ],),

    );
  }
}
