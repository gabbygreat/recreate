import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:recreate/resources/resources.dart';

void main() {
  test('app_gif assets test', () {
    expect(File(AppGif.fire).existsSync(), true);
  });
}
