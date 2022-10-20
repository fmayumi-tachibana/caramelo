import 'package:caramelo/core/theme/colors.dart';
import 'package:caramelo/core/theme/mechanisms/color_theme_abstract.dart';
import 'package:caramelo/core/theme/light_theme/light_colors.dart';
import 'package:caramelo/core/theme/light_theme/light_text_theme.dart';
import 'package:caramelo/core/theme/mechanisms/text_theme_abstract.dart';
import 'package:caramelo/core/theme/mechanisms/theme_manager.dart';

class LightTheme extends ITheme {
  LightTheme() {
    textTheme = LightTextTheme(CustomColors.black);
  }

  @override
  late ITextTheme textTheme;

  @override
  IColors get colors => LightColors();
}
