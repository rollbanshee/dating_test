import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dating_test/features/resources/resources.dart';

void main() {
  test('app_svgs assets test', () {
    expect(File(AppSvgs.alien).existsSync(), isTrue);
    expect(File(AppSvgs.anonymous).existsSync(), isTrue);
    expect(File(AppSvgs.arrowBack).existsSync(), isTrue);
    expect(File(AppSvgs.bigAnonymous).existsSync(), isTrue);
    expect(File(AppSvgs.chats).existsSync(), isTrue);
    expect(File(AppSvgs.discount).existsSync(), isTrue);
    expect(File(AppSvgs.fyp).existsSync(), isTrue);
    expect(File(AppSvgs.likefilled).existsSync(), isTrue);
    expect(File(AppSvgs.likes).existsSync(), isTrue);
    expect(File(AppSvgs.mic).existsSync(), isTrue);
    expect(File(AppSvgs.plus).existsSync(), isTrue);
    expect(File(AppSvgs.settings).existsSync(), isTrue);
  });
}
