import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class HomeRouterInterface {
  void routeToVaccinationResume(BuildContext context);
}

class HomeRouter implements HomeRouterInterface {
  @override
  void routeToVaccinationResume(BuildContext context) {
    Modular.to.navigate('/vaccinationRecord');
  }
}
