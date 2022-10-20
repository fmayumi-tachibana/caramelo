import 'package:caramelo/view/vaccination/vaccination_record.dart';
import 'package:flutter/material.dart';

abstract class HomeRouterInterface {
  void routeToVaccinationResume(BuildContext context);
}

class HomeRouter implements HomeRouterInterface {
  @override
  void routeToVaccinationResume(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Vaccination.routeToVaccinationResumeView()),
    );
  }
}
