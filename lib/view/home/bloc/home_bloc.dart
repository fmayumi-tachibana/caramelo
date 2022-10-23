import 'package:caramelo/core/theme/config.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<SetTheme>((SetTheme event, Emitter<HomeState> emit) async {
      await currentTheme.toggleTheme();
    });
  }
}
