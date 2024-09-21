import 'package:freezed_annotation/freezed_annotation.dart';
part 'info.freezed.dart';
part 'info.g.dart';

@freezed
class Info with _$Info {
  factory Info({
    required int count,
    required int pages,
    required String next,
    String? prev,
  }) = _Info;

  factory Info.fromJson(Map<String, Object> json) => _$InfoImpl.fromJson(json);
}
