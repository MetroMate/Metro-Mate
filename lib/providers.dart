import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'providers.g.dart';

@riverpod
String label(ref) => 'Hello world';
