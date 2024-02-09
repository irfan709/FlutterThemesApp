import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static Future<void> setThemeId({String? value}) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setString("AppThemeId", value!);
  }

  static Future<String?> getThemeId() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString("AppThemeId");
  }
}
