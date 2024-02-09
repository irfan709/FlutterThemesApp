import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themes_app/theme/theme_bloc.dart';
import 'package:themes_app/theme_preferences.dart';

class ThemePreferencesPage extends StatelessWidget {
  const ThemePreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Preferences'),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        itemCount: ThemePref.themePrefList.length,
        itemBuilder: (context, index) {
          final selectedTheme = ThemePref.themePrefList[index];
          return GestureDetector(
            onTap: () {
              BlocProvider.of<ThemeBloc>(context).add(ChangeThemeEvent(name: selectedTheme));
            },
            child: Container(
              margin: EdgeInsets.all(10),
              width: double.infinity,
              height: 70,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: Colors.black),
                color: appThemeData[selectedTheme]!.primaryColor,
              ),
              child: Center(
                child: Text(
                  selectedTheme,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
