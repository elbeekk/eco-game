import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashGoogle extends StatefulWidget {
  const SplashGoogle({super.key});

  @override
  State<SplashGoogle> createState() => _SplashGoogleState();
}

class _SplashGoogleState extends State<SplashGoogle> {
  double opacity = 0;

  change(double num) {
    setState(() {
      opacity = num;
    });
  }

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(milliseconds: 10), () async {
      await change(1);
    });
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      body: Center(
        child: AnimatedOpacity(
          opacity: opacity,
          onEnd: () {
            Timer(const Duration(seconds: 2), () {
            print('ended');

            });
          },
          duration: const Duration(seconds: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: MediaQuery.sizeOf(context).width * .3,
                child: Image.asset(
                  'assets/images/png/google.png',
                ),
              ),
              Text("Our Sponsor",style: GoogleFonts.albertSans(color: Colors.grey.shade500),)
            ],
          ),
        ),
      ),
    );
  }
}
