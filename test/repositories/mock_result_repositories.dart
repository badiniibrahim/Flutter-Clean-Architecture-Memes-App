import 'dart:convert';
import 'dart:io';

import 'package:memes/domain/entities/meme_response.dart';
import 'package:memes/domain/repositories/fetch_meme_repository.dart';

class MockMemesRepository extends FetchMemeRepository {
  @override
  Future<MemeResponse> fetchMemeRepository() async {
    final file = File('test/data/results_sample.json');
    final response = await file.readAsString();
    final data = await json.decode(response);
    return MemeResponse.fromJson(data);
  }
}
