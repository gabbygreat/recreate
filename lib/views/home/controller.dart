import 'package:recreate/utils/utils.dart';

part 'view.dart';

class HomeScreen extends StatefulWidget {
  static const path = "/home";
  static const name = "home";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => HomeController();
}

class HomeController extends State<HomeScreen> {
  late ScrollController scrollController;
  var offset = ValueNotifier(0.0);

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController()
      ..addListener(() {
        offset.value = scrollController.offset;
      });
  }

  @override
  void dispose() {
    scrollController.dispose();
    offset.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(this);
  }
}
