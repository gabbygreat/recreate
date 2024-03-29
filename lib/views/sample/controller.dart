import 'package:recreate/utils/utils.dart';

part 'view.dart';

class SampleScreen extends StatefulWidget {
  static const path = "/sample";
  static const name = "sample";
  const SampleScreen({super.key});

  @override
  State<SampleScreen> createState() => SampleController();
}

class SampleController extends State<SampleScreen> {
  @override
  Widget build(BuildContext context) {
    return SampleView(this);
  }
}
