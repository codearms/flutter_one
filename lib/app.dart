import 'package:package_info/package_info.dart';
import 'package:shared_preferences/shared_preferences.dart';

class App {
  static SharedPreferences preferences;
  static PackageInfo packageInfo;

  static initialize() async {
    preferences = await SharedPreferences.getInstance();
    packageInfo = await PackageInfo.fromPlatform();

    print("packageName:" + packageInfo.packageName);
    print("appName:" + packageInfo.appName);
    print("buildNumber:" + packageInfo.buildNumber);
    print("version:" + packageInfo.version);
  }
}