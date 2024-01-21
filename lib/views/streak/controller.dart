import 'package:recreate/utils/utils.dart';

part 'view.dart';

class StreakScreen extends StatefulWidget {
  static const path = "/streak";
  static const name = "streak";
  const StreakScreen({super.key});

  @override
  State<StreakScreen> createState() => StreakController();
}

class StreakController extends State<StreakScreen> {
  @override
  Widget build(BuildContext context) {
    return StreakView(this);
  }
}
