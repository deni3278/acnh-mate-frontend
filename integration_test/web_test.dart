import 'dart:html';

import 'package:acnh_mate/Widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:acnh_mate/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('HomePage tests', () {
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


}