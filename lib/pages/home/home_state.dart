import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(<UserCalcData>[]) userCalcDataList,
  }) = _HomeState;
}

@freezed
class UserCalcData with _$UserCalcData {
  const factory UserCalcData({
    @Default(<String>[]) List<String> symbols,
    @Default(0) int properNumber,
    @Default(0) int numberOfProblems,
    @Default('') String time,
    @Default('') String date,
  }) = _UserCalcData;
}
