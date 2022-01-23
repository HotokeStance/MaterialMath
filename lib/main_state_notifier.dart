import 'package:material_math/main_state.dart';
import 'package:state_notifier/state_notifier.dart';

class MainStateNotifier extends StateNotifier<MainState> with LocatorMixin {
  MainStateNotifier() : super(const MainState());

  void changeTabIndex(int index) {
    state = state.copyWith(selectedIndex: index);
  }
}
