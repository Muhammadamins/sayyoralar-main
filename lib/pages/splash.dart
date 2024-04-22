

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushNamed('/product');
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 24),
              const Text(
                "Planets ",
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                
              ),
            ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const Image(
                  width: 400,
                  height: 400,
                  image: AssetImage('assets/splash.png', )
                  , 
                ),
              ),

              const SizedBox(height: 10,),
              const CupertinoActivityIndicator(),
          
            ],
          ),
        ),
      ),
    );
  }
}