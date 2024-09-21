import 'package:freezed_annotation/freezed_annotation.dart';

part 'origin.freezed.dart';
part 'origin.g.dart';

@freezed
class Origin with _$Origin {
  factory Origin({
    required String name,
    required String url,
  }) = _Origin;

  factory Origin.fromJson(Map<String, Object> json) =>
      _$OriginImpl.fromJson(json);
  factory Origin.fromMap(Map<String, dynamic> map) {
    return Origin(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
