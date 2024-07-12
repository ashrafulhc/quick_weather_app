import 'package:flutter_test/flutter_test.dart';
import 'package:quick_weather_app/presentation/app/app.dart';
import 'package:quick_weather_app/presentation/feature/home/home_screen.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomeScreen), findsOneWidget);
    });
  });
}
