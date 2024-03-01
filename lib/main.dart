import 'package:eco_game/application/auth/auth_bloc.dart';
import 'package:eco_game/application/building/building_bloc.dart';
import 'package:eco_game/application/game/game_bloc.dart';
import 'package:eco_game/application/message/message_bloc.dart';
import 'package:eco_game/application/settings/settings_bloc.dart';
import 'package:eco_game/domain/di/dependancy_manager.dart';
import 'package:eco_game/firebase_options.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:eco_game/presentation/pages/auth_page/login_page.dart';
import 'package:eco_game/presentation/pages/game/game.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flame_audio/flame_audio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlameAudio.bgm.initialize();
  LocalStorage.init();
  setUpDependencies();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeRight,
    DeviceOrientation.landscapeLeft,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => BuildingBloc(),
          ),
          BlocProvider(
            create: (context) => GameBloc(),
          ),
          BlocProvider(
            create: (context) => SettingsBloc(),
          ),
          BlocProvider(
            create: (context) => AuthBloc(),
          ),
          BlocProvider(
            create: (context) => MessageBloc(),
          ),
        ],
        child:(LocalStorage.getMe()?.email==null)
                        ? const LoginPage()
                        : const GamePage(),
      ),
    );
  }
}
