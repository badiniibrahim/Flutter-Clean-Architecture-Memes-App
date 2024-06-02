import 'package:memes/app/core/usecase/no_param_usecases.dart';
import 'package:memes/domain/entities/meme_response.dart';

import '../repositories/fetch_meme_repository.dart';

class FetchMemeUseCase extends NoParamUseCase<MemeResponse> {
  final FetchMemeRepository _fetchMemeRepository;
  FetchMemeUseCase(this._fetchMemeRepository);

  @override
  Future<MemeResponse> execute() {
    return _fetchMemeRepository.fetchMemeRepository();
  }
}
