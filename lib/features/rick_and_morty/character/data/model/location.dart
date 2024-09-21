import 'package:freezed_annotation/freezed_annotation.dart';
part 'location.freezed.dart';
part 'location.g.dart';

@freezed
class Location with _$Location {
  factory Location({
    required String name,
    required String url,
  }) = _Location;

  factory Location.fromJson(Map<String, Object> json) =>
      _$LocationImpl.fromJson(json);
      factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      name: map['name'] as String,
      url: map['url'] as String,
    );
  }
}
