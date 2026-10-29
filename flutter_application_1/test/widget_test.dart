import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_application_1/main.dart';

void main() {
  testWidgets('shows the EdgeInsets examples on a narrow screen', (
    WidgetTester tester,
  ) async {
    tester.view.physicalSize = const Size(320, 640);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.resetPhysicalSize);
    addTearDown(tester.view.resetDevicePixelRatio);

    await tester.pumpWidget(const MyApp());

    expect(find.text('EdgeInsets Example'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.text('EdgeInsets.all(30)'), findsOneWidget);
    expect(tester.takeException(), isNull);

    await tester.scrollUntilVisible(
      find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'),
      200,
    );
    expect(find.text('EdgeInsets.fromLTRB(10, 20, 30, 40)'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}
