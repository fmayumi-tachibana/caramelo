import 'package:caramelo/modules/home/scenes/home_model.dart';
import 'package:caramelo/resources/theme/config.dart';

abstract class HomeInteractorInterface {
  void setIsDarkTheme(HomeModelSetIsDarkThemeRequest request);
}

class HomeInteractor implements HomeInteractorInterface {
  @override
  void setIsDarkTheme(HomeModelSetIsDarkThemeRequest request) {
    currentTheme.toggleTheme();
  }
}
