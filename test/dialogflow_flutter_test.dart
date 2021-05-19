import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:dialogflow_flutter/dialogflowFlutter.dart';

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

}
