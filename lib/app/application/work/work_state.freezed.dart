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
class _$WorkRiverpodStateTearOff {
  const _$WorkRiverpodStateTearOff();

  _WorkRiverpodState call(
      {required List<WorkModel> list,
      required bool loading,
      required bool showError}) {
    return _WorkRiverpodState(
      list: list,
      loading: loading,
      showError: showError,
    );
  }
}

/// @nodoc
const $WorkRiverpodState = _$WorkRiverpodStateTearOff();

/// @nodoc
mixin _$WorkRiverpodState {
  List<WorkModel> get list => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkRiverpodStateCopyWith<WorkRiverpodState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkRiverpodStateCopyWith<$Res> {
  factory $WorkRiverpodStateCopyWith(
          WorkRiverpodState value, $Res Function(WorkRiverpodState) then) =
      _$WorkRiverpodStateCopyWithImpl<$Res>;
  $Res call({List<WorkModel> list, bool loading, bool showError});
}

/// @nodoc
class _$WorkRiverpodStateCopyWithImpl<$Res>
    implements $WorkRiverpodStateCopyWith<$Res> {
  _$WorkRiverpodStateCopyWithImpl(this._value, this._then);

  final WorkRiverpodState _value;
  // ignore: unused_field
  final $Res Function(WorkRiverpodState) _then;

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
abstract class _$WorkRiverpodStateCopyWith<$Res>
    implements $WorkRiverpodStateCopyWith<$Res> {
  factory _$WorkRiverpodStateCopyWith(
          _WorkRiverpodState value, $Res Function(_WorkRiverpodState) then) =
      __$WorkRiverpodStateCopyWithImpl<$Res>;
  @override
  $Res call({List<WorkModel> list, bool loading, bool showError});
}

/// @nodoc
class __$WorkRiverpodStateCopyWithImpl<$Res>
    extends _$WorkRiverpodStateCopyWithImpl<$Res>
    implements _$WorkRiverpodStateCopyWith<$Res> {
  __$WorkRiverpodStateCopyWithImpl(
      _WorkRiverpodState _value, $Res Function(_WorkRiverpodState) _then)
      : super(_value, (v) => _then(v as _WorkRiverpodState));

  @override
  _WorkRiverpodState get _value => super._value as _WorkRiverpodState;

  @override
  $Res call({
    Object? list = freezed,
    Object? loading = freezed,
    Object? showError = freezed,
  }) {
    return _then(_WorkRiverpodState(
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
class _$_WorkRiverpodState implements _WorkRiverpodState {
  const _$_WorkRiverpodState(
      {required this.list, required this.loading, required this.showError});

  @override
  final List<WorkModel> list;
  @override
  final bool loading;
  @override
  final bool showError;

  @override
  String toString() {
    return 'WorkRiverpodState(list: $list, loading: $loading, showError: $showError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkRiverpodState &&
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
  _$WorkRiverpodStateCopyWith<_WorkRiverpodState> get copyWith =>
      __$WorkRiverpodStateCopyWithImpl<_WorkRiverpodState>(this, _$identity);
}

abstract class _WorkRiverpodState implements WorkRiverpodState {
  const factory _WorkRiverpodState(
      {required List<WorkModel> list,
      required bool loading,
      required bool showError}) = _$_WorkRiverpodState;

  @override
  List<WorkModel> get list => throw _privateConstructorUsedError;
  @override
  bool get loading => throw _privateConstructorUsedError;
  @override
  bool get showError => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkRiverpodStateCopyWith<_WorkRiverpodState> get copyWith =>
      throw _privateConstructorUsedError;
}
