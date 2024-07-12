import 'package:quick_weather_app/injection/injector.dart';

class DependencyManager {
  static Future<void> inject() async {
    // TODO(ashrafulhc): flavor and router related injection.

    await configureDependencies();
  }
}
