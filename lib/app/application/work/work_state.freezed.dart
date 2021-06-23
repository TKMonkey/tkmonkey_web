// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'work_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkStateTearOff {
  const _$WorkStateTearOff();

  _WorkState call(
      {required List<WorkModel> list,
      required bool loading,
      required bool showError}) {
    return _WorkState(
      list: list,
      loading: loading,
      showError: showError,
    );
  }
}

/// @nodoc
const $WorkState = _$WorkStateTearOff();

/// @nodoc
mixin _$WorkState {
  List<WorkModel> get list => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkStateCopyWith<WorkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkStateCopyWith<$Res> {
  factory $WorkStateCopyWith(WorkState value, $Res Function(WorkState) then) =
      _$WorkStateCopyWithImpl<$Res>;
  $Res call({List<WorkModel> list, bool loading, bool showError});
}

/// @nodoc
class _$WorkStateCopyWithImpl<$Res> implements $WorkStateCopyWith<$Res> {
  _$WorkStateCopyWithImpl(this._value, this._then);

  final WorkState _value;
  // ignore: unused_field
  final $Res Function(WorkState) _then;

  @override
  $Res call({
    Object? list = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_value.copyWith(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WorkModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$WorkStateCopyWith<$Res> implements $WorkStateCopyWith<$Res> {
  factory _$WorkStateCopyWith(
          _WorkState value, $Res Function(_WorkState) then) =
      __$WorkStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WorkModel> list, bool loading, bool showError});
}

/// @nodoc
class __$WorkStateCopyWithImpl<$Res> extends _$WorkStateCopyWithImpl<$Res>
    implements _$WorkStateCopyWith<$Res> {
  __$WorkStateCopyWithImpl(_WorkState _value, $Res Function(_WorkState) _then)
      : super(_value, (v) => _then(v as _WorkState));

  @override
  _WorkState get _value => super._value as _WorkState;

  @override
  $Res call({
    Object? list = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_WorkState(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as List<WorkModel>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      showError: showError == freezed
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
class _$_WorkState implements _WorkState {
  const _$_WorkState(
      {required this.list, required this.loading, required this.showError});

  @override
  final List<WorkModel> list;
  @override
  final bool loading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'WorkState(list: $list, loading: $loading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkState &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.loading, loading) ||
                const DeepCollectionEquality()
                    .equals(other.loading, loading)) &&
            (identical(other.showError, showError) ||
                const DeepCollectionEquality()
                    .equals(other.showError, showError)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(loading) ^
      const DeepCollectionEquality().hash(showError);

  @JsonKey(ignore: true)
  @override
  _$WorkStateCopyWith<_WorkState> get copyWith =>
      __$WorkStateCopyWithImpl<_WorkState>(this, _$identity);
}

abstract class _WorkState implements WorkState {
  const factory _WorkState(
      {required List<WorkModel> list,
      required bool loading,
      required bool showError}) = _$_WorkState;

  @override
  List<WorkModel> get list => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkStateCopyWith<_WorkState> get copyWith =>
      throw _privateConstructorUsedError;
}
