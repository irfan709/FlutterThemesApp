import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:themes_app/shared_preferences.dart';
import 'package:themes_app/theme_preferences.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc() : super(ThemeInitial()) {
    on<ChangeThemeEvent>((event, emit) {
      print('Changing theme to: ${event.name}');
      SharedPref.setThemeId(value: event.name);
      emit(ThemeLoaded(themeData: appThemeData[event.name]!));
    });

    on<GetPreservedThemeEvent>(
      (event, emit) {
        SharedPref.getThemeId().then(
          (value) {
            add(GetPreservedThemeLoadEvent(value!));
          },
        );
      },
    );

    on<GetPreservedThemeLoadEvent>(
      (event, emit) {
        emit(PreservedThemeLoaded(name: event.name));
      },
    );
  }
}
