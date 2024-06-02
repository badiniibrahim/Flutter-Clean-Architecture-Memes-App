import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'meme_response.g.dart';

@JsonSerializable()
class MemeResponse {
  bool? success;
  Data? data;
  MemeResponse(this.success, this.data);

  factory MemeResponse.fromJson(Map<String, dynamic> json) =>
      _$MemeResponseFromJson(json);
  Map<String, dynamic> toJson() => _$MemeResponseToJson(this);
}
