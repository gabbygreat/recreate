import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:recreate/resources/resources.dart';

void main() {
  test('app_svg assets test', () {
    expect(File(AppSvg.activeSpeak).existsSync(), true);
    expect(File(AppSvg.bell).existsSync(), true);
    expect(File(AppSvg.books).existsSync(), true);
    expect(File(AppSvg.bro).existsSync(), true);
    expect(File(AppSvg.chatInactive).existsSync(), true);
    expect(File(AppSvg.chatsActive).existsSync(), true);
    expect(File(AppSvg.chevronDown).existsSync(), true);
    expect(File(AppSvg.comment1).existsSync(), true);
    expect(File(AppSvg.comment2).existsSync(), true);
    expect(File(AppSvg.comment).existsSync(), true);
    expect(File(AppSvg.exerciseActive).existsSync(), true);
    expect(File(AppSvg.exerciseInactive).existsSync(), true);
    expect(File(AppSvg.fire).existsSync(), true);
    expect(File(AppSvg.flag).existsSync(), true);
    expect(File(AppSvg.gamesActive).existsSync(), true);
    expect(File(AppSvg.games).existsSync(), true);
    expect(File(AppSvg.girl).existsSync(), true);
    expect(File(AppSvg.grid).existsSync(), true);
    expect(File(AppSvg.homeActive).existsSync(), true);
    expect(File(AppSvg.homeInactive).existsSync(), true);
    expect(File(AppSvg.inactiveSpeak).existsSync(), true);
    expect(File(AppSvg.lessonActive).existsSync(), true);
    expect(File(AppSvg.lessonInactive).existsSync(), true);
    expect(File(AppSvg.lightening).existsSync(), true);
    expect(File(AppSvg.listening).existsSync(), true);
    expect(File(AppSvg.man).existsSync(), true);
    expect(File(AppSvg.mic).existsSync(), true);
    expect(File(AppSvg.point).existsSync(), true);
    expect(File(AppSvg.quiz).existsSync(), true);
    expect(File(AppSvg.reading).existsSync(), true);
    expect(File(AppSvg.speak).existsSync(), true);
    expect(File(AppSvg.speaker).existsSync(), true);
    expect(File(AppSvg.speaking).existsSync(), true);
    expect(File(AppSvg.spike).existsSync(), true);
    expect(File(AppSvg.voice1).existsSync(), true);
    expect(File(AppSvg.voice2).existsSync(), true);
    expect(File(AppSvg.voice3).existsSync(), true);
    expect(File(AppSvg.writing).existsSync(), true);
  });
}
