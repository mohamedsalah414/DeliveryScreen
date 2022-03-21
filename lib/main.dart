import 'package:flutter/material.dart';

import 'view/screens/summary_details_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(

        primarySwatch: Colors.grey,
      ),
      debugShowCheckedModeBanner: false,
      home: const SummaryDetails(),
    );
  }
}
