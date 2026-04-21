import 'package:flutter_test/flutter_test.dart';
import 'package:geowork_app/main.dart';

void main() {
  testWidgets('Smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const GeoWorkApp());

    // Verify that the app starts on the Payroll screen (index 2)
    expect(find.text('Payroll History'), findsOneWidget);
  });
}
