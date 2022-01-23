import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:material_math/pages/home/home_state.dart';
import 'package:material_math/pages/home/home_state_notifier.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<HomeStateNotifier, HomeState>(
          create: (_) => HomeStateNotifier(),
        ),
      ],
      child: const _HomeScreen(),
    );
  }
}

class _HomeScreen extends StatelessWidget {
  const _HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Expanded(child: _UserCalcDataList()),
        ],
      ),
    );
  }
}

/// 結果一覧
class _UserCalcDataList extends StatelessWidget {
  const _UserCalcDataList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final userCalcDataList = context.select<HomeState, List<UserCalcData>>(
        (state) => state.userCalcDataList);

    if (userCalcDataList.isEmpty) {
      return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: const [Text('記録を更新しよう！')],
      );
    }

    return ListView.builder(
        itemCount: userCalcDataList.length,
        itemBuilder: (BuildContext context, int index) {
          return _UserCalcDataCard(userCalcData: userCalcDataList[index]);
        });
  }
}

/// 結果カード
class _UserCalcDataCard extends StatelessWidget {
  const _UserCalcDataCard({Key? key, required this.userCalcData})
      : super(key: key);

  final UserCalcData userCalcData;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  '${userCalcData.properNumber}',
                  style: const TextStyle(fontSize: 16),
                ),
                Text(
                  ' / ${userCalcData.numberOfProblems}問：',
                  style: const TextStyle(fontSize: 12),
                ),
                for (final symbol in userCalcData.symbols)
                  Text('  $symbol', style: const TextStyle(fontSize: 16)),
              ],
            ),
            const SizedBox(height: 8),
            Text(userCalcData.time, style: const TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Text(userCalcData.date, style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
