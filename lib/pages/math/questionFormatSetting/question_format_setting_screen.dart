import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:material_math/pages/math/questionFormatSetting/question_format_setting_state.dart';
import 'package:material_math/pages/math/questionFormatSetting/question_format_setting_state_notifier.dart';
import 'package:material_math/util/enum/calculation_symbol_enum.dart';
import 'package:provider/provider.dart';

class QuestionFormatSettingScreen extends StatelessWidget {
  const QuestionFormatSettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<QuestionFormatSettingStateNotifier,
            QuestionFormatSettingState>(
          create: (_) => QuestionFormatSettingStateNotifier(),
        ),
      ],
      child: const _QuestionFormatSettingScreen(),
    );
  }
}

class _QuestionFormatSettingScreen extends StatelessWidget {
  const _QuestionFormatSettingScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const [
          SizedBox(height: 32),
          NumberOfProblemsSetting(),
          SizedBox(height: 32),
          CalculationSymbolSetting(),
          SizedBox(height: 32),
          StartMath(),
        ],
      ),
    );
  }
}

/// 出題数の設定
class NumberOfProblemsSetting extends StatelessWidget {
  const NumberOfProblemsSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: 130,
          height: 60,
          child: TextField(
            enabled: true,
            maxLines: 1,
          ),
        ),
        Text('問', style: TextStyle(color: Colors.grey.shade600)),
      ],
    );
  }
}

/// 四則演算の設定
class CalculationSymbolSetting extends StatelessWidget {
  const CalculationSymbolSetting({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final plusChecked = context
        .select<QuestionFormatSettingState, bool>((state) => state.plusChecked);
    final minusChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.minusChecked);
    final multipliedChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.multipliedChecked);
    final dividedChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.dividedChecked);

    // 角丸
    const borderRadius = 10.0;

    return Padding(
      padding: const EdgeInsets.all(4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Material(
            color: plusChecked ? Colors.blue : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(borderRadius),
            child: InkWell(
              highlightColor: Colors.blue,
              splashColor: plusChecked ? Colors.blue : Colors.grey.shade400,
              onTap: () {
                context
                    .read<QuestionFormatSettingStateNotifier>()
                    .setCalculatorSymbol(
                        value: plusChecked, symbol: CalculationSymbolEnum.plus);
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: SizedBox(
                width: 88,
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Icon(Icons.add_circle_outlined,
                          color: Colors.white, size: 24.0),
                    ),
                    Text(
                      '足し算',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Material(
            color: minusChecked ? Colors.blue : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(borderRadius),
            child: InkWell(
              highlightColor: Colors.blue,
              splashColor: minusChecked ? Colors.blue : Colors.grey.shade400,
              onTap: () {
                context
                    .read<QuestionFormatSettingStateNotifier>()
                    .setCalculatorSymbol(
                        value: minusChecked,
                        symbol: CalculationSymbolEnum.minus);
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: SizedBox(
                width: 88,
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Icon(Icons.do_not_disturb_on_outlined,
                          color: Colors.white, size: 24.0),
                    ),
                    Text(
                      '引き算',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Material(
            color: multipliedChecked ? Colors.blue : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(borderRadius),
            child: InkWell(
              highlightColor: Colors.blue,
              splashColor:
                  multipliedChecked ? Colors.blue : Colors.grey.shade400,
              onTap: () {
                context
                    .read<QuestionFormatSettingStateNotifier>()
                    .setCalculatorSymbol(
                        value: multipliedChecked,
                        symbol: CalculationSymbolEnum.multiplied);
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: SizedBox(
                width: 88,
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Icon(Icons.cancel_outlined,
                          color: Colors.white, size: 24.0),
                    ),
                    Text(
                      '掛け算',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(width: 4),
          Material(
            color: dividedChecked ? Colors.blue : Colors.grey.shade400,
            borderRadius: BorderRadius.circular(borderRadius),
            child: InkWell(
              highlightColor: Colors.blue,
              splashColor: dividedChecked ? Colors.blue : Colors.grey.shade400,
              onTap: () {
                context
                    .read<QuestionFormatSettingStateNotifier>()
                    .setCalculatorSymbol(
                        value: dividedChecked,
                        symbol: CalculationSymbolEnum.divided);
              },
              borderRadius: BorderRadius.circular(borderRadius),
              child: SizedBox(
                width: 88,
                height: 88,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      child: Icon(Icons.dnd_forwardslash_outlined,
                          color: Colors.white, size: 24.0),
                    ),
                    Text(
                      '割り算',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

/// スタート
class StartMath extends StatelessWidget {
  const StartMath({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final plusChecked = context
        .select<QuestionFormatSettingState, bool>((state) => state.plusChecked);
    final minusChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.minusChecked);
    final multipliedChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.multipliedChecked);
    final dividedChecked = context.select<QuestionFormatSettingState, bool>(
        (state) => state.dividedChecked);

    final isStart =
        plusChecked || minusChecked || multipliedChecked || dividedChecked
            ? true
            : false;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 160,
          height: 40,
          child: ElevatedButton(
            child: const Text('Start'),
            style: ElevatedButton.styleFrom(
              fixedSize: const Size.fromWidth(160),
              minimumSize: const Size.fromWidth(60),
              primary: isStart ? Colors.blue : Colors.grey.shade600,
              onPrimary: Colors.white,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            onPressed: isStart
                ? () {
                    context
                        .read<QuestionFormatSettingStateNotifier>()
                        .startMath();
                  }
                : null,
          ),
        ),
      ],
    );
  }
}
