import 'package:flutter/material.dart';
import 'package:rupeeapp/rupee.dart';
import 'package:rupeeapp/splesh_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (BuildContext context, Orientation orientation,
          DeviceType deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Rupee(),
        );
      },
    );
  }
}
