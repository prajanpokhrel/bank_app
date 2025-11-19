import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:siddhartha_bank_ui/constant/routes/routes.dart';
import 'package:siddhartha_bank_ui/features/sendmoney/presentation/view/send_money.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Siddhrtha Bank Ui Demo',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          ),
          home: SendMoney(),
          // initialRoute: AppRoutes.homepage,
          // routes: AppRoutes.routes(),
        );
      },
    );
  }
}
