import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_item.freezed.dart';

@freezed
class HeaderItem with _$HeaderItem {
  const factory HeaderItem({
    required String id,
    required String title,
    String? route,
    @Default(false) bool isSelected,
  }) = _HeaderItem;
}
