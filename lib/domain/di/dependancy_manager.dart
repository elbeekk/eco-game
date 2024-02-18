import 'package:eco_game/domain/interface/auth.dart';
import 'package:eco_game/infrastructure/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

final GetIt getIt = GetIt.instance;

Future<void> setUpDependencies()async{
  getIt.registerSingleton<AuthInterface>(AuthRepository());

}

final authRepository = getIt.get<AuthInterface>();

