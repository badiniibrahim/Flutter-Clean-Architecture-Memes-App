import 'package:get/get.dart';
import 'package:memes/app/state/home_state.dart';
import 'package:memes/domain/usecases/fetch_meme_use_case.dart';

class HomeController extends GetxController {
  final FetchMemeUseCase _fetchMemeUseCase;
  HomeController(this._fetchMemeUseCase);

  final HomeState homeState = HomeState();

  fetchData() async {
    final memes = await _fetchMemeUseCase.execute();
    homeState.dataList = memes.data?.memes ?? [];
  }
}
