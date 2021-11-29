import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_colors/color_bloc.dart';
import 'package:flutter_bloc_colors/color_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo',
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ColorBloc _bloc = BlocProvider.of<ColorBloc>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('flutter_bloc'),
        centerTitle: true,
      ),
      body: Center(
        child: BlocBuilder<ColorBloc, ColorState>(
          builder: (context, state) => AnimatedContainer(
            height: 150,
            width: 150,
            duration: Duration(milliseconds: 500),
            color: _bloc.color,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            onPressed: () {
              _bloc.add(ColorEvent.eventRed);
            },
            backgroundColor: Colors.red,
          ),
          SizedBox(width: 10),
          FloatingActionButton(
            onPressed: () {
              _bloc.add(ColorEvent.eventGreen);
            },
            backgroundColor: Colors.green,
          ),
        ],
      ),
    );
  }
}
