import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:memes/domain/entities/meme.dart';

class HomeState {
  final RxList<Meme> _dataList = <Meme>[].obs;
  set dataList(value) => _dataList.value = value;
  List<Meme> get dataList => _dataList;
}
