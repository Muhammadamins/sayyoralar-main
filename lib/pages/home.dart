import 'package:flutter/material.dart';
import 'package:sayyoralar/animated_app_bar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const AnimatedAppBar(),
      body: Center(
        child: GridView.count(
  shrinkWrap: true,
   padding: const EdgeInsets.only(left: 20, right: 20),
   crossAxisCount: 2,
   crossAxisSpacing: 18,
   mainAxisSpacing: 18,
),
      ),
    );
  }
}