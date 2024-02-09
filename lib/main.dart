import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/shared_preferences.dart';
import 'package:themes_app/theme/theme_bloc.dart';
import 'package:themes_app/theme_preferences.dart';

import 'home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // String savedTheme = await SharedPref.getThemeId();
  String savedTheme = await SharedPref.getThemeId() ?? ThemePref.lightTheme;
  runApp(MyApp(savedTheme: savedTheme));
}

class MyApp extends StatelessWidget {
  final String savedTheme;

  const MyApp({Key? key, required this.savedTheme});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, state) {
          if (state is ThemeLoaded) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: state.themeData,
              home: HomePage(),
            );
          }
          if (state is PreservedThemeLoaded) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: _switchTheme(state.name),
              home: HomePage(),
            );
          }
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Flutter Demo',
            theme: _switchTheme(savedTheme),
            home: HomePage(),
          );
        },
      ),
    );
  }

  ThemeData _switchTheme(String name) {
    switch (name) {
      case ThemePref.lightTheme:
        {
          return appThemeData[ThemePref.lightTheme]!;
        }
      case ThemePref.darkTheme:
        {
          return appThemeData[ThemePref.darkTheme]!;
        }
      case ThemePref.deepOrangeThemeLight:
        {
          return appThemeData[ThemePref.deepOrangeThemeLight]!;
        }
      case ThemePref.deepPurpleThemeLight:
        {
          return appThemeData[ThemePref.deepPurpleThemeLight]!;
        }
      default:
        {
          return appThemeData[ThemePref.lightTheme]!;
        }
    }
  }
}
