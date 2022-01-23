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
    return box.values.toList();
  }

  /// レコードを保存する
  @override
  Future<void> save(QuestionSubmissionResultModel recordData) async {
    final box = await _questionSubmissionResultModelBox.box;
    await box.add(recordData);
  }
}
