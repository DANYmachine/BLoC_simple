import 'package:flutter_bloc_colors/color_bloc.dart';
import 'package:get_it/get_it.dart';

final dependency = GetIt.instance;

void InitDependencies() {
  dependency.registerSingleton<ColorBloc>(ColorBloc());
}
