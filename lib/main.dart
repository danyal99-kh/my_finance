import 'package:flutter/material.dart';
import 'package:my_finance/screens/dashboard/dashboard_screen.dart'; // این خط فایل HomePage رو ایمپورت می‌کنه
import 'package:my_finance/core/constants/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'برنامه حسابداری',
      theme: ThemeData.dark(), // یا تم دلخواه خودت
      home: HomePage(), // صفحه اصلی اپ
    );
  }
}
