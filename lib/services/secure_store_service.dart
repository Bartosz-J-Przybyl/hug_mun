import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:simple_secure_storage/simple_secure_storage.dart';

class SecureStoreService {
  final bool isWeb = false;

  SecureStoreService({required bool isWeb}) {
    init();
    // SimpleSecureStorage.clear();
  }

  Future<void> init() async {
    if (isWeb) {
      // To secure your data on Flutter web, we have to encrypt it using a password and a salt.
      await SimpleSecureStorage.initialize(WebInitializationOptions(
          keyPassword: 'password', encryptionSalt: 'salt'));
    } else {
      // Feel free to use `InitializationOptions` if you want here too.
      await SimpleSecureStorage.initialize();
    }
  }

  Future<bool> write(List<Object> args, serverName) async {
    await SimpleSecureStorage.write(serverName, jsonEncode(args));
    return SimpleSecureStorage.has(serverName);
  }

  Future<dynamic> read(String serverName) async {
    try {
      if (await SimpleSecureStorage.has(serverName)) {
        final data = await SimpleSecureStorage.read(serverName);
        final decodedData = jsonDecode(data!);
        return decodedData;
      } else {
        return null;
      }
    } on Exception catch (e) {
      debugPrint("Unable to read storage, reason: ${e.toString()}");
    }
  }

  Future<void> delete(String serverName) async {
    try {
      if (await SimpleSecureStorage.has(serverName)) {
        await SimpleSecureStorage.delete(serverName);
      }
    } on Exception catch (e) {
      debugPrint("Unable to read storage, reason: ${e.toString()}");
    }
  }
}
