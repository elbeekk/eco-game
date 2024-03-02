import 'package:eco_game/domain/interface/auth.dart';
import 'package:eco_game/domain/interface/building.dart';
import 'package:eco_game/domain/interface/message.dart';
import 'package:eco_game/domain/interface/user.dart';
import 'package:eco_game/infrastructure/repository/auth_repository.dart';
import 'package:eco_game/infrastructure/repository/building_repository.dart';
import 'package:eco_game/infrastructure/repository/message_repository.dart';
import 'package:eco_game/infrastructure/repository/user_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerSingleton<AuthInterface>(AuthRepository());
  getIt.registerSingleton<UserInterface>(UserRepository());
  getIt.registerSingleton<MessageInterface>(MessageRepository());
  getIt.registerSingleton<BuildingInterface>(BuildingRepository());
}

final authRepository = getIt.get<AuthInterface>();
final buildingRepository = getIt.get<BuildingInterface>();
final messageRepository = getIt.get<MessageInterface>();
final userRepository = getIt.get<UserInterface>();
