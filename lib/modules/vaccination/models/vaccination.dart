import 'package:json_annotation/json_annotation.dart';

part 'vaccination.g.dart';

@JsonSerializable()
class Vaccination {
  Vaccination({
    this.id,
    this.name,
    this.date,
    this.lotNumber,
    this.doctorName,
  });

  factory Vaccination.fromJson(Map<String, dynamic> json) => _$VaccinationFromJson(json);

  Map<String, dynamic> toJson() => _$VaccinationToJson(this);

  int? id;
  String? name;
  DateTime? date;
  String? lotNumber;
  String? doctorName;
}
