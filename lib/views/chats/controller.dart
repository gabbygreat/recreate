import 'package:recreate/utils/utils.dart';

part 'view.dart';

class ChatsScreen extends StatefulWidget {
  static const path = "/chats";
  static const name = "chats";
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => ChatsController();
}

class ChatsController extends State<ChatsScreen> {
  @override
  Widget build(BuildContext context) {
    return ChatsView(this);
  }
}
