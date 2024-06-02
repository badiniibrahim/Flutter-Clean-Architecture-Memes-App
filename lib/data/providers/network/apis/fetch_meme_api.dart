import 'package:memes/data/providers/network/api_endpoint.dart';
import 'package:memes/data/providers/network/api_provider.dart';
import 'package:memes/data/providers/network/api_request_representable.dart';

enum CharacterType { fetchMemes }

class FetchMemeApi extends APIRequestRepresentable {
  final CharacterType type;

  FetchMemeApi._({
    required this.type,
  });

  FetchMemeApi.fetchCharacter()
      : this._(
          type: CharacterType.fetchMemes,
        );

  @override
  get body => null;

  @override
  String get endpoint => APIEndpoint.imgflip;

  @override
  Map<String, String>? get headers => null;

  @override
  HTTPMethod get method {
    return HTTPMethod.get;
  }

  @override
  String get path {
    switch (type) {
      case CharacterType.fetchMemes:
        return "/get_memes";
    }
  }

  @override
  Map<String, String>? get query => null;

  @override
  Future request() {
    return APIProvider.instance.request(this);
  }

  @override
  String get url => endpoint + path;
}
