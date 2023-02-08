import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:yumemi_flutter/provider/provider.dart';

void main() {
  group('provider', () {
    test('searchWordProvider test', () async {
      final provider = searchWordProvider.read(ProviderContainer());
      expect(provider, '');
    });

    test('errorCodeProvider test', () async {
      final provider = errorCodeProvider.read(ProviderContainer());
      expect(provider, 200);
    });

    test('languageIndexProvider test', () async {
      final provider = languageIndexProvider.read(ProviderContainer());
      expect(provider, 0);
    });
  });
}
