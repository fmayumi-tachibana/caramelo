import 'package:caramelo/modules/home/scenes/home_interactor.dart';
import 'package:caramelo/modules/home/scenes/home_model.dart';
import 'package:caramelo/modules/home/scenes/home_router.dart';
import 'package:caramelo/modules/home/views/home_cell.dart';
import 'package:caramelo/resources/theme/colors.dart';
import 'package:flutter/material.dart';

abstract class HomeViewInterface {
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> implements HomeViewInterface {
  final CustomColors colors = CustomColors();
  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        width: 75,
        height: 60,
        fit: BoxFit.fill,
      ),
      centerTitle: true,
      elevation: 0,
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.brightness_6_rounded,
            color: Theme.of(context).iconTheme.color,
          ),
          onPressed: () => HomeInteractor().setIsDarkTheme(
            HomeModelSetIsDarkThemeRequest(),
          ),
        ),
      ],
    ),
    body: Column(
      children: <Widget>[
        SizedBox(
          height: 400,
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(10),
            crossAxisSpacing: 5,
            mainAxisSpacing: 10,
            crossAxisCount: 3,
            children: <Widget>[
              GestureDetector(
                onTap: () => HomeRouter().routeToVaccinationResume(context),
                child: HomeCell(
                  categoryName: 'Vacinação',
                  categoryImage: 'assets/images/heartbeat.png',
                ),
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
        Container(
          height: 200,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: CustomColors.caramel,
          ),
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text(
                    'Dica de hoje',
                    style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                  Text(
                    'Se pergunte: Se o meu cão pudesse escolher como seria o dia de hoje, o que iríamos fazer? Traga esses elementos para a rotina de vocês e você poderá ver a felicidade estampada na cara do seu cão!',
                    style: TextStyle(fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.start,
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
