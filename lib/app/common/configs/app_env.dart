import 'package:flutter_dotenv/flutter_dotenv.dart';

final class AppEnv {
  AppEnv._init();
  static final AppEnv _instance = AppEnv._init();
  static AppEnv get I => _instance;

  Future<void> init() async {
    await dotenv.load();
  }

  String get metMuseumApiUrl => dotenv.env['MET_MUSEUM_API_URL']!;
}
