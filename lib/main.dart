// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:my_finance/screens/dashboard/dashboard_screen.dart'; // این خط فایل HomePage رو ایمپورت می‌کنه

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
