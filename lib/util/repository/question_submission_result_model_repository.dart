import 'package:material_math/util/repository/base_repository.dart';
import 'package:material_math/util/typeAdapter/question_submission_result_type_adapter.dart';

/// データベースへのアクセサクラス
class QuestionSubmissionResultModelRepository
    implements BaseRepository<QuestionSubmissionResultModel> {
  late QuestionSubmissionResultModelBox _questionSubmissionResultModelBox;

  /// コンストラクタ
  QuestionSubmissionResultModelRepository(
      QuestionSubmissionResultModelBox recordModelBox) {
    _questionSubmissionResultModelBox = recordModelBox;
  }

  /// 全件取得
  @override
  Future<List<QuestionSubmissionResultModel>> fetchAll() async {
    final box = await _questionSubmissionResultModelBox.box;
    final list = box.values.toList();
    // 日付の降順でソート
    list.sort((a, b) => b.date.compareTo(a.date));
    return list;
  }

  /// レコードを保存する
  @override
  Future<void> save(QuestionSubmissionResultModel recordData) async {
    final box = await _questionSubmissionResultModelBox.box;
    await box.add(recordData);
  }
}
