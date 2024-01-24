import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'contenuprojet.dart';



class CourseSection extends StatefulWidget {
  const CourseSection({super.key, required FirebaseAnalyticsObserver observer, required FirebaseAnalytics analytics});

  @override
  State<CourseSection> createState() => _CourseSectionState();
}

class _CourseSectionState extends State<CourseSection> {

  @override
  Widget build(BuildContext context) => Builder(
    builder: (context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
        ),
        home: Contenu()

       
  );
    }

  );


}