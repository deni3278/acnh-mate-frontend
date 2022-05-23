import 'package:acnh_mate/Widgets/circle_button_bar_widget.dart';
import 'package:acnh_mate/Widgets/item_row_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:acnh_mate/main.dart' as app;

void main() {
 final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HomePage Tests', () {
    testWidgets('find fossils text on home page', (tester) async {
      app.main();
      await tester.pumpAndSettle();
      expect(find.text('Fossils'), findsWidgets);

    });
    testWidgets("find villager text on home page", (tester) async{
      app.main();
      await tester.pumpAndSettle();
      expect(find.text("Villagers"), findsWidgets);
    });
  });

  group('CollectionPage tests', () {
    testWidgets('find fish on collection page', (tester) async{
      app.main();
      await tester.pumpAndSettle();
      await tester.tap(find.descendant(
        of: find.byType(AppBar),
        matching: find.byType(IconButton)
      ));
      await tester.pumpAndSettle();
       await tester.tap(find.byKey(const Key("CollectionsButton")));
       await tester.pumpAndSettle();
       expect(find.byType(ItemRowWidget), findsWidgets);
      await binding.takeScreenshot('screenshot');

    });
    tearDownAll(()async  => await binding.takeScreenshot('screenshot'));
  });
}