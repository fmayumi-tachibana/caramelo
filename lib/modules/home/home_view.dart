import 'package:caramelo/modules/home/views/home_cell.dart';
import 'package:caramelo/resources/theme/config.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) => Scaffold(
      appBar: AppBar(
        title: Image.asset(
          'assets/images/ic_paw_print.png',
          width: 40,
          height: 40,
          fit: BoxFit.fill,
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(
                Icons.brightness_4,
                color: Theme.of(context).iconTheme.color,
            ),
            onPressed: () => currentTheme.toggleTheme(),
          )
        ],
      ),
      body: Center(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: const <Widget>[
            HomeCell(
              categoryName: 'Vacinação',
              categoryImage: 'assets/images/heartbeat.png',
            ),
            HomeCell(
              categoryName: 'Meus Bros',
              categoryImage: 'assets/images/pets.png',
            ),
            HomeCell(
              categoryName: 'Consultas',
              categoryImage: 'assets/images/stethoscope.png',
            ),
            HomeCell(
              categoryName: 'Alimentação',
              categoryImage: 'assets/images/pet_food.png',
            ),
            HomeCell(
              categoryName: 'Medicação',
              categoryImage: 'assets/images/medicine.png',
            ),
            HomeCell(
              categoryName: 'Configurações',
              categoryImage: 'assets/images/settings.png',
            ),
          ],
        ),
      ),
  );
}
