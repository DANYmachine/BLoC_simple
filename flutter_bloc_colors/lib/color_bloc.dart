import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_state.dart';

enum ColorEvent {
  eventRed,
  eventGreen,
}

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  Color color = Colors.green;
  ColorBloc() : super(ColorEmptyState());

  Stream<Color> mapEventToState(ColorEvent event) async* {
    color = (event == ColorEvent.eventRed) ? Colors.red : Colors.green;
    yield color;
  }
}
