import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:mamyssrestaurant/bloc/bloc_event.dart';
import 'package:mamyssrestaurant/bloc/bloc_state.dart';

class BlocColor extends Bloc<EventColors, ColorState> {
  BlocColor() : super(ColorInitial(iniColor: Color(0xFFF2F2F2))) {
    on<EventChangeColors>((event, emit) {
      emit(ColorVert(vert: Colors.green));
    });
  }
}
