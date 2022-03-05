import 'dart:math';

import 'package:flutter/material.dart';
import 'package:material_math/pages/math/questionSubmission/question_submission_state.dart';
import 'package:material_math/util/repository/question_submission_result_model_repository.dart';
import 'package:material_math/util/typeAdapter/question_submission_result_type_adapter.dart';
import 'package:state_notifier/state_notifier.dart';

class QuestionSubmissionStateNotifier
    extends StateNotifier<QuestionSubmissionState> with LocatorMixin {
  final int numberOfProblems;
  final int numberOfDigits;
  final bool plusChecked;
  final bool minusChecked;
  final bool multipliedChecked;
  final bool dividedChecked;

  QuestionSubmissionStateNotifier(
      this.numberOfProblems,
      this.numberOfDigits,
      this.plusChecked,
      this.minusChecked,
      this.multipliedChecked,
      this.dividedChecked)
      : super(const QuestionSubmissionState());

  Stopwatch stopWatch = Stopwatch();
  late List<int> inputAnswerList = [];

  @override
  void initState() {
    super.initState();
    createProblems();
    stopWatch.start();
  }

  /// 桁数作成
  int _createNumberOfDigits() {
    var randomDigits = '';
    for (int i = 0; i < numberOfDigits; i++) {
      randomDigits += '9';
    }
    return int.parse(randomDigits);
  }

  /// 問題作成
  void createProblems() {
    late List<ProblemState> problemsList = [];
    for (int i = 0; i < numberOfProblems; i++) {
      final leftSide = Random().nextInt(_createNumberOfDigits()) + 1;
      final rightSide = Random().nextInt(_createNumberOfDigits()) + 1;
      final symbolNumber = Random().nextInt(4);
      // 足し算
      if (plusChecked && symbolNumber == 0) {
        final answer = leftSide + rightSide;
        problemsList.add(ProblemState(
          problemIndex: i,
          leftSide: leftSide.toString(),
          rightSide: rightSide.toString(),
          symbol: '+',
          answer: answer,
        ));
      } else if (minusChecked && symbolNumber == 1) {
        // 引き算
        if (leftSide < rightSide) {
          i--;
          continue;
        }
        final answer = leftSide - rightSide;
        problemsList.add(ProblemState(
          problemIndex: i,
          leftSide: leftSide.toString(),
          rightSide: rightSide.toString(),
          symbol: '-',
          answer: answer,
        ));
      } else if (multipliedChecked && symbolNumber == 2) {
        // 掛け算
        final answer = leftSide * rightSide;
        problemsList.add(ProblemState(
          problemIndex: i,
          leftSide: leftSide.toString(),
          rightSide: rightSide.toString(),
          symbol: '×',
          answer: answer,
        ));
      } else if (dividedChecked && symbolNumber == 3) {
        // 割り算
        if (leftSide % rightSide != 0) {
          i--;
          continue;
        }
        final answer = leftSide / rightSide;
        problemsList.add(ProblemState(
          problemIndex: i,
          leftSide: leftSide.toString(),
          rightSide: rightSide.toString(),
          symbol: '÷',
          answer: answer.toInt(),
        ));
      } else {
        // どれにも当てはまらない
        i--;
        continue;
      }
    }
    state = state.copyWith(
      numberOfProblems: numberOfProblems,
      problemsList: problemsList,
    );
  }

  /// 答えの入力
  void inputAnswer(String answer) {
    state = state.copyWith(inputAnswer: state.inputAnswer + answer);
  }

  /// clearの処理
  void deleteAnswer() {
    final pos = state.inputAnswer.length;
    if (pos == 0) {
      return;
    }
    state =
        state.copyWith(inputAnswer: state.inputAnswer.substring(0, pos - 1));
  }

  /// 次の問題へ
  void nextProblems() {
    final pos = state.inputAnswer.length;
    if (pos == 0) {
      return;
    }
    inputAnswerList.add(int.parse(state.inputAnswer));
    state = state.copyWith(
        inputAnswer: '', nowProblemIndex: state.nowProblemIndex + 1);
  }

  /// 回答終了
  void finishProblem(BuildContext context) {
    final pos = state.inputAnswer.length;
    if (pos == 0) {
      return;
    }
    inputAnswerList.add(int.parse(state.inputAnswer));
    stopWatch.stop();
    // 正誤のチェックをする
    int properNumber = 0;

    for (int i = 0; i < numberOfProblems; i++) {
      if (state.problemsList[i].answer == inputAnswerList[i]) {
        properNumber += 1;
      }
    }

    final List<String> symbols = [];
    if (plusChecked) {
      symbols.add('+');
    }
    if (minusChecked) {
      symbols.add('-');
    }
    if (multipliedChecked) {
      symbols.add('×');
    }
    if (dividedChecked) {
      symbols.add('÷');
    }

    final now = DateTime.now();
    // hiveで保存する(symbol,正当数,時間,日付)
    final hive = QuestionSubmissionResultModelRepository(
        QuestionSubmissionResultModelBox());
    final saveData = QuestionSubmissionResultModel(
        symbols: symbols,
        properNumber: properNumber,
        numberOfProblems: numberOfProblems,
        time: stopWatch.elapsed.toString(),
        date: now);
    hive.save(saveData);

    Navigator.pop(context);
  }
}
