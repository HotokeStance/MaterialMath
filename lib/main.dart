import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:material_math/main_state.dart';
import 'package:material_math/main_state_notifier.dart';
import 'package:material_math/pages/home/home_screen.dart';
import 'package:material_math/pages/math/questionFormatSetting/question_format_setting_screen.dart';
import 'package:material_math/util/app_color.dart';
import 'package:material_math/util/typeAdapter/question_submission_result_type_adapter.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  // Hiveの初期化
  await Hive.initFlutter();
  Hive.registerAdapter(QuestionSubmissionResultModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppColor.light(),
      darkTheme: AppColor.dark(),
      themeMode: ThemeMode.system,
      home: const SafeArea(child: MyHomePage()),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainScreen(),
    );
  }
}

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        StateNotifierProvider<MainStateNotifier, MainState>(
          create: (_) => MainStateNotifier(),
        ),
      ],
      child: const BottomNavigationBarWidget(),
    );
  }
}

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const QuestionFormatSettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final selectedIndex =
        context.select<MainState, int>((state) => state.selectedIndex);
    return Scaffold(
      body: Container(
        child: _widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calculate),
            label: 'Math',
          ),
        ],
        currentIndex: selectedIndex,
        onTap: (index) {
          context.read<MainStateNotifier>().changeTabIndex(index);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
