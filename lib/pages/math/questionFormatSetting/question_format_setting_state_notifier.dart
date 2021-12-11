import 'package:flutter/material.dart';
import 'package:material_math/pages/math/questionFormatSetting/question_format_setting_state.dart';
import 'package:material_math/util/enum/calculation_symbol_enum.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionFormatSettingStateNotifier
    extends StateNotifier<QuestionFormatSettingState> with LocatorMixin {
  QuestionFormatSettingStateNotifier()
      : super(const QuestionFormatSettingState());

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

  Future<void> startMath() async {
    debugPrint('aiueo');
  }
}
