import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/services/user_service.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';

void injectDependencies() {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  getIt.registerSingleton(HugMunHttpClient());
  getIt.registerSingleton(UserService(getIt.get<HugMunHttpClient>()));
  getIt.registerSingleton(AuthenticationRepository());
  getIt.registerSingleton(UserRepository());
}
