import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_submission_state.freezed.dart';

@freezed
class QuestionSubmissionState with _$QuestionSubmissionState {
  const factory QuestionSubmissionState({
    @Default(0) int numberOfProblems,
    @Default('') String inputAnswer,
    @Default('') String formattedTime,
    @Default(0) int nowProblemIndex,
    @Default(<ProblemState>[]) List<ProblemState> problemsList,
  }) = _QestionSubmissionState;
}

@freezed
class ProblemState with _$ProblemState {
  const factory ProblemState({
    @Default(0) int problemIndex,
    @Default('') String leftSide,
    @Default('') String rightSide,
    @Default('') String symbol,
    @Default(0) int answer,
  }) = _ProblemState;
}
