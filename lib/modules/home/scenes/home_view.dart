import 'package:caramelo/modules/home/scenes/home_interactor.dart';
import 'package:caramelo/modules/home/scenes/home_model.dart';
import 'package:caramelo/modules/home/views/home_cell.dart';
import 'package:flutter/material.dart';

abstract class HomeViewInterface {
}

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> implements HomeViewInterface {

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
          onPressed: () => HomeInteractor().setIsDarkTheme(
            HomeModelSetIsDarkThemeRequest(),
          ),
        ),
      ],
    ),
    body: Center(
      child: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10),
        crossAxisSpacing: 5,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
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
