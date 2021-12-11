import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_format_setting_state.freezed.dart';

@freezed
class QuestionFormatSettingState with _$QuestionFormatSettingState {
  const factory QuestionFormatSettingState({
    @Default(0) int numberOfProblems,
    @Default(false) bool plusChecked,
    @Default(false) bool minusChecked,
    @Default(false) bool multipliedChecked,
    @Default(false) bool dividedChecked,
  }) = _QuestionFormatSettingState;
}
