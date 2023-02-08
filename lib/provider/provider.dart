import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchWordProvider = StateProvider<String>((ref) => '');
final errorCodeProvider = StateProvider<int>((ref) => 200);
final languageIndexProvider = StateProvider<int>((ref) => 0);
