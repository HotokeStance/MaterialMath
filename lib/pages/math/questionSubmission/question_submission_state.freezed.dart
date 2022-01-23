// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_submission_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$QuestionSubmissionStateTearOff {
  const _$QuestionSubmissionStateTearOff();

  _QestionSubmissionState call(
      {int numberOfProblems = 0,
      String inputAnswer = '',
      String formattedTime = '',
      int nowProblemIndex = 0,
      List<ProblemState> problemsList = const <ProblemState>[]}) {
    return _QestionSubmissionState(
      numberOfProblems: numberOfProblems,
      inputAnswer: inputAnswer,
      formattedTime: formattedTime,
      nowProblemIndex: nowProblemIndex,
      problemsList: problemsList,
    );
  }
}

/// @nodoc
const $QuestionSubmissionState = _$QuestionSubmissionStateTearOff();

/// @nodoc
mixin _$QuestionSubmissionState {
  int get numberOfProblems => throw _privateConstructorUsedError;
  String get inputAnswer => throw _privateConstructorUsedError;
  String get formattedTime => throw _privateConstructorUsedError;
  int get nowProblemIndex => throw _privateConstructorUsedError;
  List<ProblemState> get problemsList => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionSubmissionStateCopyWith<QuestionSubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionSubmissionStateCopyWith<$Res> {
  factory $QuestionSubmissionStateCopyWith(QuestionSubmissionState value,
          $Res Function(QuestionSubmissionState) then) =
      _$QuestionSubmissionStateCopyWithImpl<$Res>;
  $Res call(
      {int numberOfProblems,
      String inputAnswer,
      String formattedTime,
      int nowProblemIndex,
      List<ProblemState> problemsList});
}

/// @nodoc
class _$QuestionSubmissionStateCopyWithImpl<$Res>
    implements $QuestionSubmissionStateCopyWith<$Res> {
  _$QuestionSubmissionStateCopyWithImpl(this._value, this._then);

  final QuestionSubmissionState _value;
  // ignore: unused_field
  final $Res Function(QuestionSubmissionState) _then;

  @override
  $Res call({
    Object? numberOfProblems = freezed,
    Object? inputAnswer = freezed,
    Object? formattedTime = freezed,
    Object? nowProblemIndex = freezed,
    Object? problemsList = freezed,
  }) {
    return _then(_value.copyWith(
      numberOfProblems: numberOfProblems == freezed
          ? _value.numberOfProblems
          : numberOfProblems // ignore: cast_nullable_to_non_nullable
              as int,
      inputAnswer: inputAnswer == freezed
          ? _value.inputAnswer
          : inputAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      formattedTime: formattedTime == freezed
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      nowProblemIndex: nowProblemIndex == freezed
          ? _value.nowProblemIndex
          : nowProblemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      problemsList: problemsList == freezed
          ? _value.problemsList
          : problemsList // ignore: cast_nullable_to_non_nullable
              as List<ProblemState>,
    ));
  }
}

/// @nodoc
abstract class _$QestionSubmissionStateCopyWith<$Res>
    implements $QuestionSubmissionStateCopyWith<$Res> {
  factory _$QestionSubmissionStateCopyWith(_QestionSubmissionState value,
          $Res Function(_QestionSubmissionState) then) =
      __$QestionSubmissionStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int numberOfProblems,
      String inputAnswer,
      String formattedTime,
      int nowProblemIndex,
      List<ProblemState> problemsList});
}

/// @nodoc
class __$QestionSubmissionStateCopyWithImpl<$Res>
    extends _$QuestionSubmissionStateCopyWithImpl<$Res>
    implements _$QestionSubmissionStateCopyWith<$Res> {
  __$QestionSubmissionStateCopyWithImpl(_QestionSubmissionState _value,
      $Res Function(_QestionSubmissionState) _then)
      : super(_value, (v) => _then(v as _QestionSubmissionState));

  @override
  _QestionSubmissionState get _value => super._value as _QestionSubmissionState;

  @override
  $Res call({
    Object? numberOfProblems = freezed,
    Object? inputAnswer = freezed,
    Object? formattedTime = freezed,
    Object? nowProblemIndex = freezed,
    Object? problemsList = freezed,
  }) {
    return _then(_QestionSubmissionState(
      numberOfProblems: numberOfProblems == freezed
          ? _value.numberOfProblems
          : numberOfProblems // ignore: cast_nullable_to_non_nullable
              as int,
      inputAnswer: inputAnswer == freezed
          ? _value.inputAnswer
          : inputAnswer // ignore: cast_nullable_to_non_nullable
              as String,
      formattedTime: formattedTime == freezed
          ? _value.formattedTime
          : formattedTime // ignore: cast_nullable_to_non_nullable
              as String,
      nowProblemIndex: nowProblemIndex == freezed
          ? _value.nowProblemIndex
          : nowProblemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      problemsList: problemsList == freezed
          ? _value.problemsList
          : problemsList // ignore: cast_nullable_to_non_nullable
              as List<ProblemState>,
    ));
  }
}

/// @nodoc

class _$_QestionSubmissionState implements _QestionSubmissionState {
  const _$_QestionSubmissionState(
      {this.numberOfProblems = 0,
      this.inputAnswer = '',
      this.formattedTime = '',
      this.nowProblemIndex = 0,
      this.problemsList = const <ProblemState>[]});

  @JsonKey(defaultValue: 0)
  @override
  final int numberOfProblems;
  @JsonKey(defaultValue: '')
  @override
  final String inputAnswer;
  @JsonKey(defaultValue: '')
  @override
  final String formattedTime;
  @JsonKey(defaultValue: 0)
  @override
  final int nowProblemIndex;
  @JsonKey(defaultValue: const <ProblemState>[])
  @override
  final List<ProblemState> problemsList;

  @override
  String toString() {
    return 'QuestionSubmissionState(numberOfProblems: $numberOfProblems, inputAnswer: $inputAnswer, formattedTime: $formattedTime, nowProblemIndex: $nowProblemIndex, problemsList: $problemsList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _QestionSubmissionState &&
            (identical(other.numberOfProblems, numberOfProblems) ||
                other.numberOfProblems == numberOfProblems) &&
            (identical(other.inputAnswer, inputAnswer) ||
                other.inputAnswer == inputAnswer) &&
            (identical(other.formattedTime, formattedTime) ||
                other.formattedTime == formattedTime) &&
            (identical(other.nowProblemIndex, nowProblemIndex) ||
                other.nowProblemIndex == nowProblemIndex) &&
            const DeepCollectionEquality()
                .equals(other.problemsList, problemsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      numberOfProblems,
      inputAnswer,
      formattedTime,
      nowProblemIndex,
      const DeepCollectionEquality().hash(problemsList));

  @JsonKey(ignore: true)
  @override
  _$QestionSubmissionStateCopyWith<_QestionSubmissionState> get copyWith =>
      __$QestionSubmissionStateCopyWithImpl<_QestionSubmissionState>(
          this, _$identity);
}

abstract class _QestionSubmissionState implements QuestionSubmissionState {
  const factory _QestionSubmissionState(
      {int numberOfProblems,
      String inputAnswer,
      String formattedTime,
      int nowProblemIndex,
      List<ProblemState> problemsList}) = _$_QestionSubmissionState;

  @override
  int get numberOfProblems;
  @override
  String get inputAnswer;
  @override
  String get formattedTime;
  @override
  int get nowProblemIndex;
  @override
  List<ProblemState> get problemsList;
  @override
  @JsonKey(ignore: true)
  _$QestionSubmissionStateCopyWith<_QestionSubmissionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ProblemStateTearOff {
  const _$ProblemStateTearOff();

  _ProblemState call(
      {int problemIndex = 0,
      String leftSide = '',
      String rightSide = '',
      String symbol = '',
      int answer = 0}) {
    return _ProblemState(
      problemIndex: problemIndex,
      leftSide: leftSide,
      rightSide: rightSide,
      symbol: symbol,
      answer: answer,
    );
  }
}

/// @nodoc
const $ProblemState = _$ProblemStateTearOff();

/// @nodoc
mixin _$ProblemState {
  int get problemIndex => throw _privateConstructorUsedError;
  String get leftSide => throw _privateConstructorUsedError;
  String get rightSide => throw _privateConstructorUsedError;
  String get symbol => throw _privateConstructorUsedError;
  int get answer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProblemStateCopyWith<ProblemState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProblemStateCopyWith<$Res> {
  factory $ProblemStateCopyWith(
          ProblemState value, $Res Function(ProblemState) then) =
      _$ProblemStateCopyWithImpl<$Res>;
  $Res call(
      {int problemIndex,
      String leftSide,
      String rightSide,
      String symbol,
      int answer});
}

/// @nodoc
class _$ProblemStateCopyWithImpl<$Res> implements $ProblemStateCopyWith<$Res> {
  _$ProblemStateCopyWithImpl(this._value, this._then);

  final ProblemState _value;
  // ignore: unused_field
  final $Res Function(ProblemState) _then;

  @override
  $Res call({
    Object? problemIndex = freezed,
    Object? leftSide = freezed,
    Object? rightSide = freezed,
    Object? symbol = freezed,
    Object? answer = freezed,
  }) {
    return _then(_value.copyWith(
      problemIndex: problemIndex == freezed
          ? _value.problemIndex
          : problemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      leftSide: leftSide == freezed
          ? _value.leftSide
          : leftSide // ignore: cast_nullable_to_non_nullable
              as String,
      rightSide: rightSide == freezed
          ? _value.rightSide
          : rightSide // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProblemStateCopyWith<$Res>
    implements $ProblemStateCopyWith<$Res> {
  factory _$ProblemStateCopyWith(
          _ProblemState value, $Res Function(_ProblemState) then) =
      __$ProblemStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int problemIndex,
      String leftSide,
      String rightSide,
      String symbol,
      int answer});
}

/// @nodoc
class __$ProblemStateCopyWithImpl<$Res> extends _$ProblemStateCopyWithImpl<$Res>
    implements _$ProblemStateCopyWith<$Res> {
  __$ProblemStateCopyWithImpl(
      _ProblemState _value, $Res Function(_ProblemState) _then)
      : super(_value, (v) => _then(v as _ProblemState));

  @override
  _ProblemState get _value => super._value as _ProblemState;

  @override
  $Res call({
    Object? problemIndex = freezed,
    Object? leftSide = freezed,
    Object? rightSide = freezed,
    Object? symbol = freezed,
    Object? answer = freezed,
  }) {
    return _then(_ProblemState(
      problemIndex: problemIndex == freezed
          ? _value.problemIndex
          : problemIndex // ignore: cast_nullable_to_non_nullable
              as int,
      leftSide: leftSide == freezed
          ? _value.leftSide
          : leftSide // ignore: cast_nullable_to_non_nullable
              as String,
      rightSide: rightSide == freezed
          ? _value.rightSide
          : rightSide // ignore: cast_nullable_to_non_nullable
              as String,
      symbol: symbol == freezed
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_ProblemState implements _ProblemState {
  const _$_ProblemState(
      {this.problemIndex = 0,
      this.leftSide = '',
      this.rightSide = '',
      this.symbol = '',
      this.answer = 0});

  @JsonKey(defaultValue: 0)
  @override
  final int problemIndex;
  @JsonKey(defaultValue: '')
  @override
  final String leftSide;
  @JsonKey(defaultValue: '')
  @override
  final String rightSide;
  @JsonKey(defaultValue: '')
  @override
  final String symbol;
  @JsonKey(defaultValue: 0)
  @override
  final int answer;

  @override
  String toString() {
    return 'ProblemState(problemIndex: $problemIndex, leftSide: $leftSide, rightSide: $rightSide, symbol: $symbol, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProblemState &&
            (identical(other.problemIndex, problemIndex) ||
                other.problemIndex == problemIndex) &&
            (identical(other.leftSide, leftSide) ||
                other.leftSide == leftSide) &&
            (identical(other.rightSide, rightSide) ||
                other.rightSide == rightSide) &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, problemIndex, leftSide, rightSide, symbol, answer);

  @JsonKey(ignore: true)
  @override
  _$ProblemStateCopyWith<_ProblemState> get copyWith =>
      __$ProblemStateCopyWithImpl<_ProblemState>(this, _$identity);
}

abstract class _ProblemState implements ProblemState {
  const factory _ProblemState(
      {int problemIndex,
      String leftSide,
      String rightSide,
      String symbol,
      int answer}) = _$_ProblemState;

  @override
  int get problemIndex;
  @override
  String get leftSide;
  @override
  String get rightSide;
  @override
  String get symbol;
  @override
  int get answer;
  @override
  @JsonKey(ignore: true)
  _$ProblemStateCopyWith<_ProblemState> get copyWith =>
      throw _privateConstructorUsedError;
}
