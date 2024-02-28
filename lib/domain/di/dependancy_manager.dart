import 'package:eco_game/domain/interface/auth.dart';
import 'package:eco_game/domain/interface/message.dart';
import 'package:eco_game/infrastructure/repository/auth_repository.dart';
import 'package:eco_game/infrastructure/repository/message_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies() async {
  getIt.registerSingleton<AuthInterface>(AuthRepository());
  getIt.registerSingleton<MessageInterface>(MessageRepository());
}

final authRepository = getIt.get<AuthInterface>();
final messageRepository = getIt.get<MessageInterface>();
