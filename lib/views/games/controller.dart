import 'package:recreate/utils/utils.dart';

part 'view.dart';

class GamesScreen extends StatefulWidget {
  static const path = "/games";
  static const name = "games";
  const GamesScreen({super.key});

  @override
  State<GamesScreen> createState() => GamesController();
}

class GamesController extends State<GamesScreen> {
  @override
  Widget build(BuildContext context) {
    return GamesView(this);
  }
}
