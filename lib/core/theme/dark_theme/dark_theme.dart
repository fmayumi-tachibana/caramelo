import 'package:caramelo/core/theme/colors.dart';
import 'package:caramelo/core/theme/dark_theme/dark_colors.dart';
import 'package:caramelo/core/theme/dark_theme/dark_text_theme.dart';
import 'package:caramelo/core/theme/mechanisms/color_theme_abstract.dart';
import 'package:caramelo/core/theme/mechanisms/text_theme_abstract.dart';
import 'package:caramelo/core/theme/mechanisms/theme_manager.dart';

class DarkTheme extends ITheme {
  DarkTheme() {
    textTheme = DarkTextTheme(CustomColors.white);
  }

  @override
  late ITextTheme textTheme;

  @override
  IColors get colors => DarkColors();
}
