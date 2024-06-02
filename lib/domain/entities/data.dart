import 'package:json_annotation/json_annotation.dart';
import 'package:memes/domain/entities/meme.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  List<Meme>? memes;
  Data(this.memes);

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
  Map<String, dynamic> toJson() => _$DataToJson(this);
}
