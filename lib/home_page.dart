import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:themes_app/theme_preferences_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Themes App'),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ThemePreferencesPage()),
              );
            },
            child: Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Text(
          'Themes App',
          style: TextStyle(fontSize: 25),
        ),
      ),
    );
  }
}