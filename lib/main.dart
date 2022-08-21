import 'package:education/constants.dart';
import 'package:education/model/course.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: RecentCourseCard(course: recentCourses[0]),
          ),
        ),
      ),
    );
  }
}

class RecentCourseCard extends StatelessWidget {
  RecentCourseCard({Key? key, required this.course}) : super(key: key);

  Course course;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 240.0,
      height: 240.0,
      decoration: BoxDecoration(
        gradient: course.background,
        borderRadius: BorderRadius.circular(41.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 32.0,
          left: 32.0,
          right: 32.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              course.courseSubtitle,
              style: kCardSubtitleStyle,
            ),
            SizedBox(
              height: 6.0,
            ),
            Text(
              course.courseTitle,
              style: kCardTitleStyle,
            )
          ],
        ),
      ),
    );
  }
}
