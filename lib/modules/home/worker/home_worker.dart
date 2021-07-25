import 'package:caramelo/modules/home/services/shared_preferences_service/home_shared_preferences_service.dart';

class HomeWorker {
  Future<bool> getTheme() async =>
      HomeSharedPreferencesService().isDarkTheme;

  void setTheme(bool isDarkTheme) async =>
      HomeSharedPreferencesService().setIsDarkTheme(isDarkTheme);
}
