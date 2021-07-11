import 'package:caramelo/resources/theme/mechanisms/color_theme_abstract.dart';
import 'package:caramelo/resources/theme/light_theme/light_colors.dart';
import 'package:caramelo/resources/theme/light_theme/light_text_theme.dart';
import 'package:caramelo/resources/theme/mechanisms/text_theme_abstract.dart';
import 'package:caramelo/resources/theme/mechanisms/theme_manager.dart';

class LightTheme extends ITheme {
  LightTheme() {
    textTheme = LightTextTheme(colors.colors.black);
  }

  @override
  ITextTheme textTheme;

  @override
  IColors get colors => LightColors();
}
