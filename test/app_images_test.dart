import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:dating_test/features/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.man1).existsSync(), isTrue);
    expect(File(AppImages.man2).existsSync(), isTrue);
    expect(File(AppImages.man3).existsSync(), isTrue);
    expect(File(AppImages.man4).existsSync(), isTrue);
    expect(File(AppImages.man5).existsSync(), isTrue);
    expect(File(AppImages.man6).existsSync(), isTrue);
    expect(File(AppImages.rocket).existsSync(), isTrue);
  });
}
