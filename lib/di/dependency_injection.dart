import 'package:flutter/cupertino.dart';
import 'package:get_it/get_it.dart';
import 'package:http/http.dart' as http;
import 'package:hug_mun/api/client.dart';
import 'package:hug_mun/api/services/user_service.dart';
import 'package:hug_mun/repositories/authentication_repository.dart';
import 'package:hug_mun/repositories/user_repository.dart';
import 'package:hug_mun/services/secure_store_service.dart';

void injectDependencies() {
  WidgetsFlutterBinding.ensureInitialized();
  final getIt = GetIt.instance;
  getIt.registerSingleton(HugMunHttpClient(http.Client()));
  getIt.registerSingleton(UserService(getIt.get<HugMunHttpClient>()));
  getIt.registerSingleton(SecureStoreService(isWeb: false));
  getIt.registerSingleton(AuthenticationRepository());
  getIt.registerSingleton(UserRepository());
}
