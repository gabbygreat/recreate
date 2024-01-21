import 'package:recreate/utils/utils.dart';

part 'view.dart';

class MainScreen extends StatefulWidget {
  static const path = "/main";
  static const name = "main";

  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => MainController();
}

class MainController extends State<MainScreen> {
  var screens = [
    const HomeScreen(),
    const LessonScreen(),
    const ExerciseScreen(),
    const GamesScreen(),
    const ChatsScreen(),
  ];
  var currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return MainView(this);
  }
}
