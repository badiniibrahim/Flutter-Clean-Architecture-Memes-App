import 'package:memes/domain/entities/meme_response.dart';

abstract class FetchMemeRepository {
  Future<MemeResponse> fetchMemeRepository();
}
