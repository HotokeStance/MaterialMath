import 'package:hive/hive.dart';

part 'question_submission_result_type_adapter.g.dart';

/// 記録保存
@HiveType(typeId: 0)
class QuestionSubmissionResultModel extends HiveObject {
  @HiveField(0)
  List<String> symbols;

  @HiveField(1)
  int properNumber;

  @HiveField(2)
  int numberOfProblems;

  @HiveField(3)
  String time;

  @HiveField(4)
  DateTime date;

  QuestionSubmissionResultModel(
      {required this.symbols,
      required this.properNumber,
      required this.numberOfProblems,
      required this.time,
      required this.date});
}

/// Boxを内包するクラス
/// Singletonやboxを開くのを非同期で待つのに使う
/// Boxのファイル名を間違えないようにするためにもこれを起点にアクセスすることとする
class QuestionSubmissionResultModelBox {
  Future<Box<QuestionSubmissionResultModel>> box =
      Hive.openBox<QuestionSubmissionResultModel>('question_submission_result');

  /// deleteFromDiskをした後はdatabaseが閉じてしまうため、もう一度開くための関数
  Future<void> open() async {
    Box b = await box;
    if (!b.isOpen) {
      box = Hive.openBox<QuestionSubmissionResultModel>(
          'question_submission_result');
    }
  }
}
