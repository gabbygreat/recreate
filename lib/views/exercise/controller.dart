import 'package:recreate/utils/utils.dart';

part 'view.dart';

class ExerciseScreen extends StatefulWidget {
  static const path = "/exercise";
  static const name = "exercise";
  const ExerciseScreen({super.key});

  @override
  State<ExerciseScreen> createState() => ExerciseController();
}

class ExerciseController extends State<ExerciseScreen> {
  @override
  Widget build(BuildContext context) {
    return ExerciseView(this);
  }
}
