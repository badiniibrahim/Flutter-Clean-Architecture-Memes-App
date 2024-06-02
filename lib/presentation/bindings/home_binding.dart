import 'package:get/instance_manager.dart';
import 'package:memes/data/repositories/meme_repository.dart';
import 'package:memes/domain/usecases/fetch_meme_use_case.dart';
import 'package:memes/presentation/controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FetchMemeUseCase(Get.put(MemeRepositoryIml())));
    Get.lazyPut<HomeController>(() => HomeController(Get.find()));
  }
}
