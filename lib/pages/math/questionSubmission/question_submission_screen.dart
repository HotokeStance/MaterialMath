import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:material_math/pages/math/questionSubmission/question_submission_state.dart';
import 'package:material_math/pages/math/questionSubmission/question_submission_state_notifier.dart';
import 'package:provider/provider.dart';

class QuestionSubmissionScreen extends StatelessWidget {
  const QuestionSubmissionScreen(
      {Key? key,
      required this.numberOfProblems,
      required this.numberOfDigits,
      required this.plusChecked,
      required this.minusChecked,
      required this.multipliedChecked,
      required this.dividedChecked})
      : super(key: key);
  final int numberOfProblems;
  final int numberOfDigits;
  final bool plusChecked;
  final bool minusChecked;
  final bool multipliedChecked;
  final bool dividedChecked;

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<QuestionSubmissionStateNotifier,
            QuestionSubmissionState>(
          create: (_) => QuestionSubmissionStateNotifier(
            numberOfProblems,
            numberOfDigits,
            plusChecked,
            minusChecked,
            multipliedChecked,
            dividedChecked,
          ),
        ),
      ],
      child: const SafeArea(child: _QuestionSubmissionScreen()),
    );
  }
}

class _QuestionSubmissionScreen extends StatelessWidget {
  const _QuestionSubmissionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final paddingTop = width * 0.3;
    return Scaffold(
      body: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(top: paddingTop),
                child: const _InputAnswer(),
              ),
              const _KeyBord(),
            ],
          ),
        ],
      ),
    );
  }
}

class _InputAnswer extends StatelessWidget {
  const _InputAnswer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final inputAnswer = context
        .select<QuestionSubmissionState, String>((state) => state.inputAnswer);
    final problemsList =
        context.select<QuestionSubmissionState, List<ProblemState>>(
            (state) => state.problemsList);
    final nowProblemIndex = context
        .select<QuestionSubmissionState, int>((state) => state.nowProblemIndex);
    final nowIndex = nowProblemIndex + 1;
    return Column(
      children: [
        Text('No. $nowIndex'),
        const SizedBox(height: 16),
        Text(
          '${problemsList[nowProblemIndex].leftSide} ${problemsList[nowProblemIndex].symbol} ${problemsList[nowProblemIndex].rightSide}',
          style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 8),
        Row(
          children: [
            const Text('='),
            Container(
              width: 130,
              height: 30,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                inputAnswer,
                style: const TextStyle(fontSize: 24),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _KeyBord extends StatelessWidget {
  const _KeyBord({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final numberOfProblems = context.select<QuestionSubmissionState, int>(
        (state) => state.numberOfProblems);
    final nowProblemIndex = context
        .select<QuestionSubmissionState, int>((state) => state.nowProblemIndex);
    final nowIndex = nowProblemIndex + 1;
    return Column(
      children: [
        Row(
          children: [
            for (int i = 1; i < 4; i++)
              _KeyBoardButton(
                  displayValue: i.toString(),
                  onTap: () {
                    context
                        .read<QuestionSubmissionStateNotifier>()
                        .inputAnswer(i.toString());
                  }),
          ],
        ),
        Row(
          children: [
            for (int i = 4; i < 7; i++)
              _KeyBoardButton(
                  displayValue: i.toString(),
                  onTap: () {
                    context
                        .read<QuestionSubmissionStateNotifier>()
                        .inputAnswer(i.toString());
                  }),
          ],
        ),
        Row(
          children: [
            for (int i = 7; i < 10; i++)
              _KeyBoardButton(
                  displayValue: i.toString(),
                  onTap: () {
                    context
                        .read<QuestionSubmissionStateNotifier>()
                        .inputAnswer(i.toString());
                  }),
          ],
        ),
        Row(
          children: [
            _KeyBoardButton(
                displayValue: numberOfProblems == nowIndex ? 'finish' : 'next',
                onTap: () {
                  numberOfProblems == nowIndex
                      ? context
                          .read<QuestionSubmissionStateNotifier>()
                          .finishProblem(context)
                      : context
                          .read<QuestionSubmissionStateNotifier>()
                          .nextProblems();
                }),
            _KeyBoardButton(
                displayValue: '0',
                onTap: () {
                  context
                      .read<QuestionSubmissionStateNotifier>()
                      .inputAnswer('0');
                }),
            _KeyBoardButton(
                displayValue: 'C',
                onTap: () {
                  context
                      .read<QuestionSubmissionStateNotifier>()
                      .deleteAnswer();
                })
          ],
        ),
      ],
    );
  }
}

class _KeyBoardButton extends StatelessWidget {
  const _KeyBoardButton(
      {Key? key, required this.displayValue, required this.onTap})
      : super(key: key);

  final String displayValue;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final buttonWidth = width * 0.3;
    final height = width * 0.18;
    const borderRadius = 10.0;
    return Material(
      borderRadius: BorderRadius.circular(borderRadius),
      child: InkWell(
        highlightColor: Colors.blue,
        splashColor: Colors.blue,
        onTap: () {
          onTap();
        },
        borderRadius: BorderRadius.circular(borderRadius),
        child: SizedBox(
          width: buttonWidth,
          height: height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Text(displayValue.toString())],
          ),
        ),
      ),
    );
  }
}
