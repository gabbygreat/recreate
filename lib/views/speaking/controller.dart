import 'dart:async';

import 'package:recreate/utils/utils.dart';

part 'view.dart';

class SpeakingScreen extends StatefulWidget {
  static const path = "/speaking";
  static const name = "speaking";

  final double percent;
  const SpeakingScreen({
    super.key,
    required this.percent,
  });

  @override
  State<SpeakingScreen> createState() => SpeakingController();
}

class SpeakingController extends State<SpeakingScreen> {
  var percent = ValueNotifier(0.0);

  var scale = ValueNotifier(1);
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    Future.delayed(500.milliseconds, () => percent.value = widget.percent);
    _timer = Timer.periodic(0.6.seconds, (timer) {
      scale.value = timer.tick;
    });
  }

  @override
  void dispose() {
    _timer?.cancel();
    percent.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SpeakingView(this);
  }
}
