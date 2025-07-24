// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyles {
  // عنوان‌های بزرگ
  static TextStyle headlineLarge(BuildContext context) {
    return GoogleFonts.vazirmatn(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Theme.of(context).textTheme.headlineLarge?.color,
    );
  }

  // عنوان‌های متوسط
  static TextStyle headlineMedium(BuildContext context) {
    return GoogleFonts.vazirmatn(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: Theme.of(context).textTheme.headlineMedium?.color,
    );
  }

  // متن معمولی
  static TextStyle bodyRegular(BuildContext context) {
    return GoogleFonts.vazirmatn(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: Theme.of(context).textTheme.bodyMedium?.color,
    );
  }

  // دکمه‌ها
  static TextStyle buttonText(BuildContext context) {
    return GoogleFonts.vazirmatn(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    );
  }

  // متن خطا
  static TextStyle errorText(BuildContext context) {
    return GoogleFonts.vazirmatn(fontSize: 14, color: Colors.red);
  }
}
