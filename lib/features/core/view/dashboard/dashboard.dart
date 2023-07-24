import 'package:flutter/material.dart';
import 'package:untitled/features/core/view/dashboard/widgets/appbar.dart';
import 'package:untitled/features/core/view/dashboard/widgets/banners.dart';
import 'package:untitled/features/core/view/dashboard/widgets/categories.dart';
import 'package:untitled/features/core/view/dashboard/widgets/search.dart';
import 'package:untitled/features/core/view/dashboard/widgets/top_courses.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // -- App bar
      appBar: const DashboardAppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // -- Heading Text
              Text('Hey, Code With Israr'),
              Text(
                'Explore Courses',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w900),
              ),
              SizedBox(
                height: 30,
              ),
              // -- Search Box
              DashboardSearchBox(),
              SizedBox(
                height: 30,
              ),

              // -- Courses Categories Row list
              DashboardCategories(),
              SizedBox(height: 30,),

            //  -- Banner Courses
              DashboardBanner(),
              SizedBox(height: 15,),
              Text('Top Courses',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w900)),

              // Top Courses in Flutter
              DashboardTopCourses(),
            ],
          ),
        ),
      ),
    );
  }
}





