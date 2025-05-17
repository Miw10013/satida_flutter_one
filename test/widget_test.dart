import 'package:flutter_test/flutter_test.dart';
import 'package:satida/main.dart';

void main() {
  testWidgets('แอปแสดงข้อความต้อนรับ SATIDA', (WidgetTester tester) async {
    await tester.pumpWidget(const SatidaApp());
    expect(find.text('ยินดีต้อนรับสู่ SATIDA'), findsOneWidget);
  });
}

