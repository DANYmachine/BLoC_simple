import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'color_event.dart';
import 'color_state.dart';

class ColorBloc extends Bloc<ColorEvent, ColorState> {
  ColorBloc() : super(ColorEmptyState()) {
    on<ColorEvent>((event, emit) {
      if (event is ColorRedEvent) {
        log(state.toString());
        emit(ColorState(color: Colors.red));
      } else if (event is ColorGreenEvent) {
        log(state.toString());

        emit(ColorState(color: Colors.green));
      } else if (event is ColorResetEvent) {
        log(state.toString());

        emit(ColorEmptyState());
      }
    });
  }
}
