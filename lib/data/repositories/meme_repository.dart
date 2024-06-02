import 'package:memes/data/providers/network/apis/fetch_meme_api.dart';
import 'package:memes/domain/entities/meme_response.dart';
import 'package:memes/domain/repositories/fetch_meme_repository.dart';

class MemeRepositoryIml extends FetchMemeRepository {
  @override
  Future<MemeResponse> fetchMemeRepository() async {
    final response = await FetchMemeApi.fetchCharacter().request();
    return MemeResponse.fromJson(response);
  }
}
