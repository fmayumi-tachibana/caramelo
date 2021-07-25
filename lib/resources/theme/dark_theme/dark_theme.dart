import 'package:caramelo/resources/theme/dark_theme/dark_colors.dart';
import 'package:caramelo/resources/theme/dark_theme/dark_text_theme.dart';
import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:caramelo/resources/theme/mechanisms/text_theme_abstract.dart';
import 'package:caramelo/resources/theme/mechanisms/theme_manager.dart';

class DarkTheme extends ITheme {
  DarkTheme() {
    textTheme = DarkTextTheme(colors.colors.white);
  }

  @override
  ITextTheme textTheme;

  @override
  IColors get colors => DarkColors();
}
