import 'package:auto_route/auto_route.dart';
import 'package:caramelo/view/home/scenes/home_view.dart';
import 'package:caramelo/view/vaccination/vaccination_record/scene/vaccination_record_view.dart';
import 'package:flutter/material.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen|View,Route',
  routes: <AutoRoute>[
    AutoRoute(path: '/', page: HomeView, initial: true),
    AutoRoute(path: 'vaccinationRecord', page: VaccinationRecordView),
  ],
)

class AppRouter extends _$AppRouter {}
