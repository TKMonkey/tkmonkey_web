import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'header_item_uim.freezed.dart';

@freezed
class HeaderItemUIModel with _$HeaderItemUIModel {
  const factory HeaderItemUIModel({
    required String id,
    required String title,
    String? route,
    @Default(false) bool isSelected,
  }) = _HeaderItemUIModel;
}
