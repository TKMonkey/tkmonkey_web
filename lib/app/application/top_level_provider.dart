import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:tkmonkey_web/app/infrastructure/tkmonkey_repository.dart';

final dioProvider = Provider<Dio>((ref) => Dio());

final tkmRepositoryProvider = Provider.autoDispose<TKMonkeyRepository>(
    (ref) => TKMonkeyRepository(ref.read));
