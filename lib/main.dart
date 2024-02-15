import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:eco_game/presentation/pages/overlay/OverlayButtons.dart';
import 'package:flame/flame.dart';
import 'package:flame/game.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Flame.device.fullScreen();
  Flame.device.setLandscape();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(systemNavigationBarColor: Colors.green.shade900));
  runApp(
    const MyApp()
  );
}


class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  EcoGame game = EcoGame();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: GameWidget(
          game: game,
          overlayBuilderMap: {
            "OverlayButtons": (
                BuildContext context,
                EcoGame game,
                ) {
              return const OverlayButtons();
            }
          },
        ),
      ),
    );
  }
}

