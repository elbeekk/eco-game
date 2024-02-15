import 'dart:async';
import 'package:eco_game/presentation/pages/flame_layer/game_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
          onEnd: () async {
            // googleSignIn();
            Timer(const Duration(seconds: 1), () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GamePage(),
                  ),
                  (route) => false);
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

  void googleSignIn() async {
    final GoogleSignIn _googleSignIn  = GoogleSignIn();

    try{
      final GoogleSignInAccount? googleSignInAccount = await _googleSignIn.signIn();
      if(googleSignInAccount!=null){
        final GoogleSignInAuthentication googleSignInAuthentication = await googleSignInAccount.authentication;
        final AuthCredential credential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken
        );
        await FirebaseAuth.instance.signInWithCredential(credential);
      }
    }catch(e){
      debugPrint(e.toString());
    }
  }
}
