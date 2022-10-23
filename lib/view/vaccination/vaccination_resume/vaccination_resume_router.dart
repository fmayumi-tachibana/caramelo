import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class VaccinationResumeRouterInterface {
  void routeToVaccinationRecord(BuildContext context);
}

class VaccinationResumeRouter implements VaccinationResumeRouterInterface {
  @override
  void routeToVaccinationRecord(BuildContext context) {
    Modular.to.navigate('/vaccinationRecord');
  }
}
