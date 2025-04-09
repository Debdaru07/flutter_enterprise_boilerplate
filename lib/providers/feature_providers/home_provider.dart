import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../features/home/model/home_model.dart';

final homeDataProvider = FutureProvider<HomeModel>((ref) async {
  await Future.delayed(const Duration(seconds: 1));
  return HomeModel(title: 'Home Data');
});
