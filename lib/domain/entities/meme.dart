import 'package:json_annotation/json_annotation.dart';

part 'meme.g.dart';

@JsonSerializable()
class Meme {
  String? id;
  String? name;
  String? url;
  int? width;
  int? height;
  int? boxCount;
  int? captions;

  Meme({
    this.id,
    this.name,
    this.url,
    this.width,
    this.height,
    this.boxCount,
    this.captions,
  });

  factory Meme.fromJson(Map<String, dynamic> json) => _$MemeFromJson(json);
  Map<String, dynamic> toJson() => _$MemeToJson(this);
}
