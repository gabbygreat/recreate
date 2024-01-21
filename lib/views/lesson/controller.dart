import 'package:recreate/utils/utils.dart';
import 'package:recreate/views/lesson/audio.dart';
import 'package:recreate/views/lesson/video.dart';

part 'view.dart';

class LessonScreen extends StatefulWidget {
  static const path = "/lesson";
  static const name = "lesson";
  const LessonScreen({super.key});

  @override
  State<LessonScreen> createState() => LessonController();
}

class LessonController extends State<LessonScreen> {
  @override
  Widget build(BuildContext context) {
    return LessonView(this);
  }
}
