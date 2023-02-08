import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:yumemi_flutter/class/repository_class.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  group('GithubRepository', () {
    test('fromJson()でインスタンスを作成', () async {
      final data =
          await rootBundle.loadString('test_data/github_repository_data.json');
      final Map<String, dynamic> decoded = json.decode(data);
      final instance = GithubRepository.fromJson(decoded['items'][0]);
      expect(instance, isNotNull);
    });
    test('toString()', () async {
      final data =
          await rootBundle.loadString('test_data/github_repository_data.json');
      final Map<String, dynamic> decoded = json.decode(data);
      final instance = GithubRepository.fromJson(decoded['items'][0]);
      expect(instance.toString(), isNotNull);
    });
    test('fullName', () async {
      final data =
          await rootBundle.loadString('test_data/github_repository_data.json');
      final Map<String, dynamic> decoded = json.decode(data);
      final instance = GithubRepository.fromJson(decoded['items'][0]);
      expect(instance.fullName, "dtrupenn/Tetris");
    });
  });
}
