import 'package:material_math/pages/home/home_state.dart';
import 'package:material_math/util/format_data.dart';
import 'package:material_math/util/repository/question_submission_result_model_repository.dart';
import 'package:material_math/util/typeAdapter/question_submission_result_type_adapter.dart';
import 'package:state_notifier/state_notifier.dart';

class HomeStateNotifier extends StateNotifier<HomeState> with LocatorMixin {
  HomeStateNotifier() : super(const HomeState());

  @override
  void initState() {
    super.initState();
    init();
  }

  Future<void> init() async {
    await fetchCalcData();
  }

  /// 計算結果取得
  Future<void> fetchCalcData() async {
    final hive = QuestionSubmissionResultModelRepository(
        QuestionSubmissionResultModelBox());
    final fetchCalcResultList = await hive.fetchAll();
    if (fetchCalcResultList.isEmpty) {
      return;
    }
    final list = fetchCalcResultList
        .map((e) => UserCalcData(
              symbols: e.symbols,
              properNumber: e.properNumber,
              numberOfProblems: e.numberOfProblems,
              time: FormatData.formatStopWatch(e.time),
              date: FormatData.formatDate(e.date),
            ))
        .toList();
    state = state.copyWith(
      userCalcDataList: list,
    );
  }
}
