import 'package:flutter/material.dart';

class DashboardCategoriesModel{
  final String title;
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardCategoriesModel(this.title, this.heading, this.subheading, this.onPress);

 static List<DashboardCategoriesModel> list=[
  DashboardCategoriesModel('JS', 'Java Script', '10 Lessons', null),
   DashboardCategoriesModel('F', 'FLutter', '20 Lessons', null),
   DashboardCategoriesModel('P', 'Python', '50 Lessons', null),
   DashboardCategoriesModel('H', 'HTML', '50 Lessons', null),
   DashboardCategoriesModel('K', 'Kotlin', '100 Lessons', null),
 ];
}