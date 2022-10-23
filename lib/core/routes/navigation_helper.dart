import 'package:flutter_modular/flutter_modular.dart';

class NavigatorHelper {
  String getFirstRouteHistory(String path) {
    List<dynamic> history = Modular.to.navigateHistory;

    return history.first.name;
  }
}
