import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:recreate/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.face).existsSync(), true);
    expect(File(AppImages.firstMeeting).existsSync(), true);
    expect(File(AppImages.firstTrip).existsSync(), true);
    expect(File(AppImages.freelanceWork).existsSync(), true);
    expect(File(AppImages.meetingPartners).existsSync(), true);
    expect(File(AppImages.speak).existsSync(), true);
    expect(File(AppImages.sphere).existsSync(), true);
    expect(File(AppImages.splash).existsSync(), true);
  });
}
