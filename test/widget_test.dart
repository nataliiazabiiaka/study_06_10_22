// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:study_06_10_22/main.dart';

void main() {
  testWidgets('Email it too shor error', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    final textFieldFinder = find.byKey(const ValueKey('emailField'));
    final errorTextFinder = find.text('Email is too short');

    expect(textFieldFinder, findsOneWidget);
    expect(errorTextFinder, findsNothing);
    await tester.enterText(textFieldFinder, 'ppp');
    await tester.pump();
    expect(errorTextFinder, findsOneWidget);
  });
  testWidgets('Email it invalid error', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final textFieldFinder = find.byKey(const ValueKey('emailField'));
    final errorTextFinder = find.text('Email is not valid');

    expect(textFieldFinder, findsOneWidget);
    expect(errorTextFinder, findsNothing);
    await tester.enterText(textFieldFinder, 'iouhoklpoiu');
    await tester.pump();
    expect(errorTextFinder, findsOneWidget);

  });
  testWidgets('Password it too short error', (WidgetTester tester) async {
     await tester.pumpWidget(const MyApp());


     final textFieldFinder = find.byKey(const ValueKey('passwordField'));
     final errorTextFinder = find.text('Password is too short');

     expect(textFieldFinder, findsOneWidget);
     expect(errorTextFinder, findsNothing);
     await tester.enterText(textFieldFinder, 'borj');
     await tester.pump();
     expect(errorTextFinder, findsOneWidget);
  });

  testWidgets('Work of TextField', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
    await tester.pump();

    final textFieldFinder = find.byKey(const ValueKey('newMessageField'));
    final iconButtonFinder = find.byIcon(Icons.add);

    expect(textFieldFinder, findsOneWidget);
    expect(iconButtonFinder, findsOneWidget);
    await tester.enterText(textFieldFinder, 'Hello, my name is Sofia');
    await tester.tap(iconButtonFinder);
    await tester.pump();

    final enterText = find.text('Hello, my name is Sofia');

    expect(enterText, findsOneWidget);
  });

}