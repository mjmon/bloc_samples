import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../lib/counter/counter.dart';
import '../../../lib/counter/view/counter_view.dart';

void main() {
  group('CounterPage', () {
    testWidgets('renders CounterView', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: CounterPage(),
      ));
      expect(find.byType(CounterView), findsOneWidget);
    });
  });
}
