import '../model/home_model.dart';

class HomeController {
  Future<HomeModel> fetchHomeData() async {
    await Future.delayed(const Duration(seconds: 1));
    return HomeModel(title: 'Welcome');
  }
}
