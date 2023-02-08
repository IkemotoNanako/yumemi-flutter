import 'package:flutter_riverpod/flutter_riverpod.dart';

final searchWordProvider = StateProvider((ref) => '');
final errorCodeProvider = StateProvider((ref) => 200);
final languageIndexProvider = StateProvider((ref) => 0);
