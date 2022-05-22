import 'package:acnh_mate/Views/home_page.dart';
import 'package:acnh_mate/Widgets/scaffold_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('HomePage has 2 quest cards as children',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(home: (HomePage())));

    //Find cards
    expect(find.descendant(
        of: find.byType(ScaffoldWidget), matching: find.byType(Card)
    ), findsNWidgets(2));
  });
}
