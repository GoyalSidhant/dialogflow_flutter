import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dialogflow_flutter/dialogflow_flutter.dart';

void main() {
  const MethodChannel channel = MethodChannel('dialogflow_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await DialogFlow.platformVersion, '42');
  });
}
