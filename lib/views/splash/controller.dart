import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:recreate/utils/utils.dart';

part 'view.dart';

class SplashScreen extends StatefulWidget {
  static const path = "/splash";
  static const name = "splash";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => SplashController();
}

class SplashController extends State<SplashScreen> {
  var totalAnimationDuration = 2000.ms;
  @override
  void initState() {
    super.initState();
    Future.delayed(totalAnimationDuration * 2, () {
      context.goNamed(SetupScreen.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SplashView(this);
  }
}
