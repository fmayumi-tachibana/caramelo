import 'package:caramelo/view/vaccination/vaccination_record/scene/vaccination_record_view.dart';
import 'package:caramelo/view/vaccination/vaccination_resume/vaccination_resume_view.dart';

class Vaccination {
  static VaccinationResumeView routeToVaccinationResumeView() => const VaccinationResumeView();
  static VaccinationRecordView routeToVaccinationRecordView() => const VaccinationRecordView();
}
