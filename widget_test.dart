import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:latask/main.dart';

void main() {
  testWidgets('weather app shows search form', (WidgetTester tester) async {
    await tester.pumpWidget(const WeatherApp());
    await tester.pump();

    expect(find.text('Weather Assistant'), findsWidgets);
    expect(find.text('Search City'), findsOneWidget);
    expect(find.byIcon(Icons.location_city), findsOneWidget);
    expect(find.byIcon(Icons.key), findsOneWidget);
    expect(find.text('Get Weather'), findsOneWidget);
  });
}
