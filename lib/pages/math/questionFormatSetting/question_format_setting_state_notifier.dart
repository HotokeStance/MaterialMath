import 'package:flutter/material.dart';
import 'package:material_math/main_state_notifier.dart';
import 'package:material_math/pages/math/questionFormatSetting/question_format_setting_state.dart';
import 'package:material_math/pages/math/questionSubmission/question_submission_screen.dart';
import 'package:material_math/util/enum/calculation_symbol_enum.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionFormatSettingStateNotifier
    extends StateNotifier<QuestionFormatSettingState> with LocatorMixin {
  QuestionFormatSettingStateNotifier()
      : super(const QuestionFormatSettingState());

  MainStateNotifier get _mainStateNotifier => read<MainStateNotifier>();

  void setCalculatorSymbol(
      {required bool value, required CalculationSymbolEnum symbol}) {
    switch (symbol) {
      case CalculationSymbolEnum.plus:
        state = state.copyWith(plusChecked: value ? false : true);
        break;
      case CalculationSymbolEnum.minus:
        state = state.copyWith(minusChecked: value ? false : true);
        break;
      case CalculationSymbolEnum.multiplied:
        state = state.copyWith(multipliedChecked: value ? false : true);
        break;
      case CalculationSymbolEnum.divided:
        state = state.copyWith(dividedChecked: value ? false : true);
        break;
    }
  }

  void changNumberOfDigits(String numberOfDigits) {
    try {
      final intNumberOfDigits = int.parse(numberOfDigits);
      state = state.copyWith(
        numberOfDigits: intNumberOfDigits,
      );
    } on Exception catch (_) {
      debugPrint('数値に変換できません');
    }
  }

  void changeNumberOfProblems(String numberOfProblems) {
    try {
      final intNumberOfProblems = int.parse(numberOfProblems);
      state = state.copyWith(
        numberOfProblems: intNumberOfProblems,
      );
    } on Exception catch (_) {
      debugPrint('数値に変換できません');
    }
  }

  Future<void> startMath(BuildContext context) async {
    if (state.numberOfProblems == 0 || state.numberOfDigits == 0) {
      return;
    }
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => QuestionSubmissionScreen(
          numberOfProblems: state.numberOfProblems,
          numberOfDigits: state.numberOfDigits,
          plusChecked: state.plusChecked,
          minusChecked: state.minusChecked,
          multipliedChecked: state.multipliedChecked,
          dividedChecked: state.dividedChecked,
        ),
        fullscreenDialog: true,
      ),
    );

    _mainStateNotifier.changeTabIndex(0);
  }
}
