import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:sample/core/init/notifier/theme_notifier.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApplicationProvider {
  ApplicationProvider._init();

  static SharedPreferences? pref;
  static ApplicationProvider? _instance;

  static ApplicationProvider get instance {
    _instance ??= ApplicationProvider._init();
    return _instance!;
  }

  List<SingleChildWidget> singleItems = [];
  List<SingleChildWidget> dependItems = [
    ChangeNotifierProvider(
      create: (context) => ThemeNotifier(pref!)),
  ];
  List<SingleChildWidget> uiChangesItems = [];
}
