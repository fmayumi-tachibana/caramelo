import 'package:caramelo/core/theme/config.dart';
import 'package:caramelo/core/theme/dark_theme/dark_theme.dart';
import 'package:caramelo/core/theme/light_theme/light_theme.dart';
import 'package:caramelo/core/theme/mechanisms/theme_manager.dart';
import 'package:caramelo/view/home/scenes/home_view.dart';
import 'package:caramelo/view/vaccination/vaccination_record/scene/vaccination_record_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:sizer/sizer.dart';

void main() => runApp(ModularApp(module: AppModule(), child: const CarameloApp()));

class AppModule extends Module {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRoute> get routes => [
    ChildRoute('/', child: (context, args) => const HomeView(), transition: TransitionType.defaultTransition),
    ChildRoute('/vaccinationRecord', child: (context, args) => const VaccinationRecordView(), transition: TransitionType.defaultTransition),
    ///Dynamic routes: consists on having a dynamic route segment, can be retrieved as a parameter:
    //ChildRoute('/second/:name', child: (context, args) => SecondPage(name: args.params['name'])),
    ///Modular.to.navigate('/second/jacob');
    ///
    /// Use Modular.args.data to receive directly argument.
    //ChildRoute('/second', child: (context, args) => SecondPage(person: args.data)),
    /// Send object
    ///Modular.to.navigate('/second', arguments: Person());
    ///
    ///If is necessary to define a route for redirection, you can use RedirectRoute as a route:
    ///RedirectRoute is very useful to work as a shortcut for long routes.
    ///RedirectRoute('/redirect', to: '/'),
    ///
    ///When a route is not found, an error is sent informing that the route path does not exist.
    WildcardRoute(child: (context, args) => Container()),
  ];
}

class CarameloApp extends StatefulWidget {
  const CarameloApp({Key? key}) : super(key: key);

  @override
  State<CarameloApp> createState() => _CarameloAppState();
}

class _CarameloAppState extends State<CarameloApp> {
  @override
  void initState() {
    super.initState();
    currentTheme.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) => Sizer(
    builder: (
        BuildContext context,
        Orientation orientation,
        DeviceType deviceType,
        ) => MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Caramelo',
      theme: ThemeManager.createTheme(LightTheme()),
      darkTheme: ThemeManager.createTheme(DarkTheme()),
      themeMode: currentTheme.currentTheme,
      routeInformationParser: Modular.routeInformationParser,
      routerDelegate: Modular.routerDelegate,
    ),
  );
}
