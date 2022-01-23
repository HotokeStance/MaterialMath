// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HomeStateTearOff {
  const _$HomeStateTearOff();

  _HomeState call({dynamic userCalcDataList = const <UserCalcData>[]}) {
    return _HomeState(
      userCalcDataList: userCalcDataList,
    );
  }
}

/// @nodoc
const $HomeState = _$HomeStateTearOff();

/// @nodoc
mixin _$HomeState {
  dynamic get userCalcDataList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({dynamic userCalcDataList});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? userCalcDataList = freezed,
  }) {
    return _then(_value.copyWith(
      userCalcDataList: userCalcDataList == freezed
          ? _value.userCalcDataList
          : userCalcDataList // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(
          _HomeState value, $Res Function(_HomeState) then) =
      __$HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({dynamic userCalcDataList});
}

/// @nodoc
class __$HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(_HomeState _value, $Res Function(_HomeState) _then)
      : super(_value, (v) => _then(v as _HomeState));

  @override
  _HomeState get _value => super._value as _HomeState;

  @override
  $Res call({
    Object? userCalcDataList = freezed,
  }) {
    return _then(_HomeState(
      userCalcDataList: userCalcDataList == freezed
          ? _value.userCalcDataList
          : userCalcDataList,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState({this.userCalcDataList = const <UserCalcData>[]});

  @JsonKey(defaultValue: const <UserCalcData>[])
  @override
  final dynamic userCalcDataList;

  @override
  String toString() {
    return 'HomeState(userCalcDataList: $userCalcDataList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HomeState &&
            const DeepCollectionEquality()
                .equals(other.userCalcDataList, userCalcDataList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userCalcDataList));

  @JsonKey(ignore: true)
  @override
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({dynamic userCalcDataList}) = _$_HomeState;

  @override
  dynamic get userCalcDataList;
  @override
  @JsonKey(ignore: true)
  _$HomeStateCopyWith<_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$UserCalcDataTearOff {
  const _$UserCalcDataTearOff();

  _UserCalcData call(
      {List<String> symbols = const <String>[],
      int properNumber = 0,
      int numberOfProblems = 0,
      String time = '',
      String date = ''}) {
    return _UserCalcData(
      symbols: symbols,
      properNumber: properNumber,
      numberOfProblems: numberOfProblems,
      time: time,
      date: date,
    );
  }
}

/// @nodoc
const $UserCalcData = _$UserCalcDataTearOff();

/// @nodoc
mixin _$UserCalcData {
  List<String> get symbols => throw _privateConstructorUsedError;
  int get properNumber => throw _privateConstructorUsedError;
  int get numberOfProblems => throw _privateConstructorUsedError;
  String get time => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserCalcDataCopyWith<UserCalcData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCalcDataCopyWith<$Res> {
  factory $UserCalcDataCopyWith(
          UserCalcData value, $Res Function(UserCalcData) then) =
      _$UserCalcDataCopyWithImpl<$Res>;
  $Res call(
      {List<String> symbols,
      int properNumber,
      int numberOfProblems,
      String time,
      String date});
}

/// @nodoc
class _$UserCalcDataCopyWithImpl<$Res> implements $UserCalcDataCopyWith<$Res> {
  _$UserCalcDataCopyWithImpl(this._value, this._then);

  final UserCalcData _value;
  // ignore: unused_field
  final $Res Function(UserCalcData) _then;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? properNumber = freezed,
    Object? numberOfProblems = freezed,
    Object? time = freezed,
    Object? date = freezed,
  }) {
    return _then(_value.copyWith(
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      properNumber: properNumber == freezed
          ? _value.properNumber
          : properNumber // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfProblems: numberOfProblems == freezed
          ? _value.numberOfProblems
          : numberOfProblems // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserCalcDataCopyWith<$Res>
    implements $UserCalcDataCopyWith<$Res> {
  factory _$UserCalcDataCopyWith(
          _UserCalcData value, $Res Function(_UserCalcData) then) =
      __$UserCalcDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<String> symbols,
      int properNumber,
      int numberOfProblems,
      String time,
      String date});
}

/// @nodoc
class __$UserCalcDataCopyWithImpl<$Res> extends _$UserCalcDataCopyWithImpl<$Res>
    implements _$UserCalcDataCopyWith<$Res> {
  __$UserCalcDataCopyWithImpl(
      _UserCalcData _value, $Res Function(_UserCalcData) _then)
      : super(_value, (v) => _then(v as _UserCalcData));

  @override
  _UserCalcData get _value => super._value as _UserCalcData;

  @override
  $Res call({
    Object? symbols = freezed,
    Object? properNumber = freezed,
    Object? numberOfProblems = freezed,
    Object? time = freezed,
    Object? date = freezed,
  }) {
    return _then(_UserCalcData(
      symbols: symbols == freezed
          ? _value.symbols
          : symbols // ignore: cast_nullable_to_non_nullable
              as List<String>,
      properNumber: properNumber == freezed
          ? _value.properNumber
          : properNumber // ignore: cast_nullable_to_non_nullable
              as int,
      numberOfProblems: numberOfProblems == freezed
          ? _value.numberOfProblems
          : numberOfProblems // ignore: cast_nullable_to_non_nullable
              as int,
      time: time == freezed
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserCalcData implements _UserCalcData {
  const _$_UserCalcData(
      {this.symbols = const <String>[],
      this.properNumber = 0,
      this.numberOfProblems = 0,
      this.time = '',
      this.date = ''});

  @JsonKey(defaultValue: const <String>[])
  @override
  final List<String> symbols;
  @JsonKey(defaultValue: 0)
  @override
  final int properNumber;
  @JsonKey(defaultValue: 0)
  @override
  final int numberOfProblems;
  @JsonKey(defaultValue: '')
  @override
  final String time;
  @JsonKey(defaultValue: '')
  @override
  final String date;

  @override
  String toString() {
    return 'UserCalcData(symbols: $symbols, properNumber: $properNumber, numberOfProblems: $numberOfProblems, time: $time, date: $date)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserCalcData &&
            const DeepCollectionEquality().equals(other.symbols, symbols) &&
            (identical(other.properNumber, properNumber) ||
                other.properNumber == properNumber) &&
            (identical(other.numberOfProblems, numberOfProblems) ||
                other.numberOfProblems == numberOfProblems) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.date, date) || other.date == date));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(symbols),
      properNumber,
      numberOfProblems,
      time,
      date);

  @JsonKey(ignore: true)
  @override
  _$UserCalcDataCopyWith<_UserCalcData> get copyWith =>
      __$UserCalcDataCopyWithImpl<_UserCalcData>(this, _$identity);
}

abstract class _UserCalcData implements UserCalcData {
  const factory _UserCalcData(
      {List<String> symbols,
      int properNumber,
      int numberOfProblems,
      String time,
      String date}) = _$_UserCalcData;

  @override
  List<String> get symbols;
  @override
  int get properNumber;
  @override
  int get numberOfProblems;
  @override
  String get time;
  @override
  String get date;
  @override
  @JsonKey(ignore: true)
  _$UserCalcDataCopyWith<_UserCalcData> get copyWith =>
      throw _privateConstructorUsedError;
}
