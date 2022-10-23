import 'package:caramelo/core/theme/colors.dart';
import 'package:caramelo/view/vaccination/vaccination_record/widget/vaccination_cell.dart';
import 'package:flutter/material.dart';

abstract class VaccinationRecordViewInterface {
}

class VaccinationRecordView extends StatefulWidget {
  const VaccinationRecordView({Key? key}) : super(key: key);

  @override
  State<VaccinationRecordView> createState() => _VaccinationRecordViewState();
}

class _VaccinationRecordViewState extends State<VaccinationRecordView> implements VaccinationRecordViewInterface {
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(
        'Carteira de Vacinação',
        style: TextStyle(color: CustomColors.black),
      ),
      centerTitle: true,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_rounded,
          color: Theme.of(context).iconTheme.color,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.add,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => {},
        ),
      ],
    ),
    body: Column(
      children: const <Widget>[
        VaccinationCell(
          name: 'V10',
          date: '11/09/2021',
          lotNumber: 'AB1234',
          doctorName: 'Dra. Alice',
        ),
        SizedBox(height: 15),
        VaccinationCell(
          name: 'Leishmaniose',
          date: '11/09/2021',
          lotNumber: 'AB1234',
          doctorName: 'Dra. Alice',
        ),
        SizedBox(height: 15),
        VaccinationCell(
          name: 'Antirrábica',
          date: '11/09/2021',
          lotNumber: 'AB1234',
          doctorName: 'Dra. Alice',
        ),
        SizedBox(height: 15),
        VaccinationCell(
          name: 'Gripe canina',
          date: '11/09/2021',
          lotNumber: 'AB1234',
          doctorName: 'Dra. Alice',
        ),
      ],
    ),
  );
}
