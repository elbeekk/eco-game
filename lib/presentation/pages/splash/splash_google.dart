import 'dart:async';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:eco_game/presentation/pages/auth_page/login_page.dart';
import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
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
          onEnd: () async {
            Timer(const Duration(seconds: 1), () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        LocalStorage.getMe()?.firstName == null
                            ? const LoginPage()
                            : const GamePage(),
                  ),
                  (route) => false);
            });
          },
          duration: const Duration(seconds: 3),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                constraints: const BoxConstraints(maxWidth: 400, minWidth: 150),
                width: MediaQuery.sizeOf(context).width * .3,
                child: Image.asset(
                  'assets/images/png/google.png',
                ),
              ),
              Text(
                "Our Sponsor",
                style: GoogleFonts.albertSans(color: Colors.grey.shade500),
              )
            ],
          ),
        ),
      ),
    );
  }
}
