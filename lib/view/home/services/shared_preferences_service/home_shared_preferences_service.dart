import 'package:caramelo/view/home/support/home_shared_preferences_support.dart';
import 'package:caramelo/core/services/local_storage_service.dart';

class HomeKey {
  static String isDarkTheme = 'is_dark_theme_key';
}

class HomeSharedPreferencesService
    extends LocalStorageService
    implements HomeSharedPreferencesSupport {

  @override
  Future<bool> get isDarkTheme =>
      LocalStorageService.load(key: HomeKey.isDarkTheme, defaultValue: false);

  @override
  Future<void> setIsDarkTheme (bool isDarkTheme) async =>
      LocalStorageService.save(value: isDarkTheme, key: HomeKey.isDarkTheme);
}
