import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:quick_weather_app/injection/injector.config.dart';

GetIt injector = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
Future<void> configureDependencies() async => $initGetIt(injector);
