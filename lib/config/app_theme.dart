import 'package:flutter/material.dart';
import 'package:flutter_bilibili/config/app_colors.dart';

final ThemeData themeData = ThemeData(
  primaryColor: AppColors.primary,
  scaffoldBackgroundColor: AppColors.page,
  indicatorColor: AppColors.active,
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: AppColors.nav,
    selectedItemColor: AppColors.active,
    unselectedItemColor: AppColors.unactive,
    selectedLabelStyle: TextStyle(fontSize: 12),
  ),
  splashColor: Colors.transparent, // 取消水波纹效果
  highlightColor: Colors.transparent, // 取消水波纹效果
  textTheme: TextTheme(
    bodyText2: TextStyle(color: AppColors.unactive),
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: AppColors.nav,
    elevation: 0,
  ),
  tabBarTheme: TabBarTheme(
    unselectedLabelColor: AppColors.unactive,
    indicatorSize: TabBarIndicatorSize.label,
    labelStyle: TextStyle(
      fontSize: 18,
    ),
    labelPadding: EdgeInsets.symmetric(horizontal: 12),
  ),
);
