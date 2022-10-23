import 'package:caramelo/core/theme/colors.dart';
import 'package:caramelo/view/home/bloc/home_bloc.dart';
import 'package:caramelo/view/home/scenes/home_router.dart';
import 'package:caramelo/view/home/widget/home_cell.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class HomeViewInterface {
}

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> implements HomeViewInterface {
  late HomeBloc homeBloc;

  @override
  void initState() {
    super.initState();
    homeBloc = HomeBloc();
    homeBloc.add(SetTheme());
    super.initState();
  }

  @override
  Widget build(BuildContext context) => BlocProvider(
    create: (_) => homeBloc,
    child: Scaffold(
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
          BlocBuilder<HomeBloc, HomeState>(
            builder: (BuildContext context, HomeState state) => IconButton(
              icon: Icon(
                Icons.brightness_6_rounded,
                color: Theme.of(context).iconTheme.color,
              ),
              onPressed: () => context.read<HomeBloc>().add(SetTheme()),
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
                  children: <Widget>[
                    Text(
                      'Dica de hoje',
                      style: TextStyle(
                        fontSize: 25,
                        color: CustomColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    Text(
                      'Se pergunte: Se o meu cão pudesse escolher como seria o '
                          'dia de hoje, o que iríamos fazer? Traga esses '
                          'elementos para a rotina de vocês e você poderá '
                          'ver a felicidade estampada na cara do seu cão!',
                      style: TextStyle(
                        fontSize: 20,
                        color: CustomColors.white,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty<HomeBloc>('homeBloc', homeBloc));
  }
}
