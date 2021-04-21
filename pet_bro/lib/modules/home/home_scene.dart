import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScene extends StatefulWidget {
  @override
  _HomeSceneState createState() => _HomeSceneState();
}

class _HomeSceneState extends State<HomeScene> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/ic_paw_print.png',
            width: 40,
            height: 40,
            fit: BoxFit.fill,
          ),
          elevation: 0,
        ),
        body: Center(
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                // 10% of the width, so there are ten blinds.
                colors: <Color>[
                  Colors.white,
                  Colors.teal[200],
                ],
                stops: [0, 1],
              ),
            ),
            child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/images/heartbeat.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Vacinação',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/images/pets.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Meus Bros',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/images/stethoscope.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Consultas',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Image.asset(
                        'assets/images/pet_food.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      const SizedBox(height: 50),
                      Text(
                        'Alimentação',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Image.asset(
                        'assets/images/medicine.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Medicação',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      Image.asset(
                        'assets/images/settings.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                      SizedBox(height: 50),
                      Text(
                        'Configurações',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      // 10% of the width, so there are ten blinds.
                      colors: <Color>[
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        Colors.teal[300],
                      ],
                      stops: [0, 0.2, 0.4, 0.6, 1],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
