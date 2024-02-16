import 'package:eco_game/infrastructure/services/local_storage.dart';
import 'package:eco_game/presentation/pages/splash/splash_google.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flame/flame.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  FlameAudio.bgm.initialize();
  LocalStorage.init();
  SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(systemNavigationBarColor: Colors.green.shade900));
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: SplashPage());
  }
}
