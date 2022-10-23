import 'package:caramelo/core/theme/colors.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class VaccinationCell extends StatelessWidget {
  const VaccinationCell({
    Key? key,
    required this.name,
    required this.date,
    required this.lotNumber,
    required this.doctorName,
  }) : super(key: key);

  final String name;
  final String date;
  final String lotNumber;
  final String doctorName;

  @override
  Widget build(BuildContext context) => Container(
    padding: const EdgeInsets.all(8.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        width: 1,
        color: CustomColors.lightCaramel,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              name,
              style: Theme.of(context).textTheme.headline6,
            ),
            Text(
              date,
              style: Theme.of(context).textTheme.headline6,
            ),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Lote: $lotNumber',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            Text(
              doctorName,
              style: Theme.of(context).textTheme.subtitle1,
            ),
          ],
        ),
      ],
    ),
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(StringProperty('name', name));
    properties.add(StringProperty('date', date));
    properties.add(StringProperty('lotNumber', lotNumber));
    properties.add(StringProperty('doctorName', doctorName));
  }
}
