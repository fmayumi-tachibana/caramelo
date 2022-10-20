import 'package:caramelo/view/vaccination/vaccination_record.dart';
import 'package:flutter/material.dart';

abstract class VaccinationResumeRouterInterface {
  void routeToVaccinationRecord(BuildContext context);
}

class VaccinationResumeRouter implements VaccinationResumeRouterInterface {
  @override
  void routeToVaccinationRecord(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Vaccination.routeToVaccinationRecordView()),
    );
  }
}
