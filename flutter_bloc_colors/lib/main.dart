import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_colors/color_bloc.dart';
import 'package:flutter_bloc_colors/dependencies.dart';
import 'package:flutter_bloc_colors/widget_color.dart';
import 'package:get_it/get_it.dart';

void main() {
  runApp(const MyApp());
  InitDependencies();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter demo',
      home: BlocProvider(
        create: (_) => dependency<ColorBloc>(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MainWidget();
  }
}
