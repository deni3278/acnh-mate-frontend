import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:acnh_mate/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('UI Test', () {
    testWidgets('find fossils text on home page', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.text('Fossils'), findsWidgets);
    });
  });
}