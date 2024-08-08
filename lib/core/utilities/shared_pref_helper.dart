import 'package:encrypt_shared_preferences/provider.dart';
import 'package:madrasa_task/core/utilities/shared_pref_enum.dart';


class SharedPRefHelper {
  var sharedPref = EncryptedSharedPreferences.getInstance();

  bool get isLight {
    try {
      return sharedPref.getBoolean(SharedPrefEnum.isLight.toString())!;
    } catch (e) {
      return false;
    }
  }
  String get getLanguage {
    try {
      return sharedPref.getString(SharedPrefEnum.language.toString())!;
    } catch (e) {
      return "ar";
    }
  }

  String get getBearerToken {
    try {
      return sharedPref.getString(SharedPrefEnum.bearerToken.toString())!;
    } catch (e) {
      return "";
    }
  }

  String get getAccessToken {
    try {
      return sharedPref.getString(SharedPrefEnum.accessToken.toString())!;
    } catch (e) {
      return "";
    }
  }

  void setDarkMode(bool value) {
    sharedPref.setBoolean(SharedPrefEnum.isLight.toString(), value);
  }

  void setLanguage(String value) {
    sharedPref.setString(SharedPrefEnum.language.toString(), value);
  }

  void setBearerToken(String value) {
    sharedPref.setString(SharedPrefEnum.bearerToken.toString(), value);
  }

  void setAccessToken(String value) {
    sharedPref.setString(SharedPrefEnum.accessToken.toString(), value);
  }
}
