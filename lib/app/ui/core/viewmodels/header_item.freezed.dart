// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'header_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HeaderItemTearOff {
  const _$HeaderItemTearOff();

  _HeaderItem call(
      {required String id,
      required String title,
      String? route,
      bool isSelected = false}) {
    return _HeaderItem(
      id: id,
      title: title,
      route: route,
      isSelected: isSelected,
    );
  }
}

/// @nodoc
const $HeaderItem = _$HeaderItemTearOff();

/// @nodoc
mixin _$HeaderItem {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get route => throw _privateConstructorUsedError;
  bool get isSelected => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HeaderItemCopyWith<HeaderItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HeaderItemCopyWith<$Res> {
  factory $HeaderItemCopyWith(
          HeaderItem value, $Res Function(HeaderItem) then) =
      _$HeaderItemCopyWithImpl<$Res>;
  $Res call({String id, String title, String? route, bool isSelected});
}

/// @nodoc
class _$HeaderItemCopyWithImpl<$Res> implements $HeaderItemCopyWith<$Res> {
  _$HeaderItemCopyWithImpl(this._value, this._then);

  final HeaderItem _value;
  // ignore: unused_field
  final $Res Function(HeaderItem) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? route = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$HeaderItemCopyWith<$Res> implements $HeaderItemCopyWith<$Res> {
  factory _$HeaderItemCopyWith(
          _HeaderItem value, $Res Function(_HeaderItem) then) =
      __$HeaderItemCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String? route, bool isSelected});
}

/// @nodoc
class __$HeaderItemCopyWithImpl<$Res> extends _$HeaderItemCopyWithImpl<$Res>
    implements _$HeaderItemCopyWith<$Res> {
  __$HeaderItemCopyWithImpl(
      _HeaderItem _value, $Res Function(_HeaderItem) _then)
      : super(_value, (v) => _then(v as _HeaderItem));

  @override
  _HeaderItem get _value => super._value as _HeaderItem;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? route = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_HeaderItem(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      route: route == freezed
          ? _value.route
          : route // ignore: cast_nullable_to_non_nullable
              as String?,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_HeaderItem with DiagnosticableTreeMixin implements _HeaderItem {
  const _$_HeaderItem(
      {required this.id,
      required this.title,
      this.route,
      this.isSelected = false});

  @override
  final String id;
  @override
  final String title;
  @override
  final String? route;
  @JsonKey(defaultValue: false)
  @override
  final bool isSelected;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HeaderItem(id: $id, title: $title, route: $route, isSelected: $isSelected)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HeaderItem'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('route', route))
      ..add(DiagnosticsProperty('isSelected', isSelected));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HeaderItem &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.route, route) ||
                const DeepCollectionEquality().equals(other.route, route)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(route) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$HeaderItemCopyWith<_HeaderItem> get copyWith =>
      __$HeaderItemCopyWithImpl<_HeaderItem>(this, _$identity);
}

abstract class _HeaderItem implements HeaderItem {
  const factory _HeaderItem(
      {required String id,
      required String title,
      String? route,
      bool isSelected}) = _$_HeaderItem;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String? get route => throw _privateConstructorUsedError;
  @override
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HeaderItemCopyWith<_HeaderItem> get copyWith =>
      throw _privateConstructorUsedError;
}
