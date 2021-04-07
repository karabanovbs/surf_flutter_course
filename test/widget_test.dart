import 'package:flutter_test/flutter_test.dart';
import 'package:places/dio_client.dart';

void main() {
  group('networking', () {
    test('dio jsonplaceholder/users', () async {
      await dioClient.get('https://jsonplaceholder.typicode.com/users');
    });
  });
}
