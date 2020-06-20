import 'package:flutter/material.dart';
import 'package:labs_test/pages/ui/detailsPage.dart';
import 'package:labs_test/pages/ui/homePage.dart';
import 'package:labs_test/utils/constant.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '390 labs test',
      theme: ThemeData(
        primaryColor: Costant.primaryColor,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        DetailsPage.routeName: (context) => DetailsPage(),
      },
    );
  }
}
