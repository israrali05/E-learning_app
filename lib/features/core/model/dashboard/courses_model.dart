import 'package:flutter/material.dart';

class DashboardBannerModel{
  final String heading;
  final String subheading;
  final VoidCallback? onPress;

  DashboardBannerModel( this.heading, this.subheading, this.onPress);

  static List<DashboardBannerModel> list=[
    DashboardBannerModel( 'Java Script Course', '3 Sections', null),
    DashboardBannerModel('HTML/CSS Crash Course', '10 Sections', null),
    DashboardBannerModel('New Kotlin Developmet', '5 Sections', null),
  ];
}