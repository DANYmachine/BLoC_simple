import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_colors/dependencies.dart';

import 'color_bloc.dart';
import 'color_event.dart';
import 'color_state.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  _MainWidgetState createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  late ColorBloc _bloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _bloc = dependency.get<ColorBloc>();
  }

  @override
  Widget build(BuildContext context) {
    _bloc = dependency.get<ColorBloc>();
    log('_bloc ' + _bloc.toString());

    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Color BLoC'),
          centerTitle: true,
        ),
        body: Center(
          child: BlocBuilder<ColorBloc, ColorState>(
            builder: (context, state) => Material(
              borderRadius: BorderRadius.circular(15),
              child: AnimatedContainer(
                height: 150,
                width: 150,
                duration: Duration(milliseconds: 100),
                color: state.color,
              ),
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () {
                _bloc.add(ColorRedEvent());
              },
              backgroundColor: Colors.red,
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                _bloc.add(ColorGreenEvent());
              },
              backgroundColor: Colors.green,
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                _bloc.add(ColorResetEvent());
              },
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
