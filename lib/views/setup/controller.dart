import 'package:recreate/utils/utils.dart';

part 'view.dart';

class SetupScreen extends StatefulWidget {
  static const path = "/setup";
  static const name = "setup";
  const SetupScreen({super.key});

  @override
  State<SetupScreen> createState() => SetupController();
}

class SetupController extends State<SetupScreen> {
  var setupChips = [
    SetupChipModel(selected: false, text: 'Studies'),
    SetupChipModel(selected: false, text: 'Reading'),
    SetupChipModel(selected: true, text: 'Technologies'),
    SetupChipModel(selected: false, text: 'Travel'),
    SetupChipModel(selected: false, text: 'Psychology'),
    SetupChipModel(selected: true, text: 'Gaming'),
    SetupChipModel(selected: false, text: 'TV/Movies'),
    SetupChipModel(selected: false, text: 'Sports'),
    SetupChipModel(selected: false, text: 'Languages'),
    SetupChipModel(selected: false, text: 'Fashion'),
    SetupChipModel(selected: false, text: 'Fitness'),
    SetupChipModel(selected: false, text: 'Pet'),
    SetupChipModel(selected: false, text: 'Food'),
    SetupChipModel(selected: false, text: 'Climate Change'),
    SetupChipModel(selected: true, text: 'Self care'),
    SetupChipModel(selected: false, text: 'Work life'),
    SetupChipModel(selected: false, text: 'Culture'),
    SetupChipModel(selected: false, text: 'Design'),
    SetupChipModel(selected: false, text: 'Sociology'),
    SetupChipModel(selected: false, text: 'Music'),
    SetupChipModel(selected: false, text: 'Outdoor'),
    SetupChipModel(selected: true, text: 'Networking'),
    SetupChipModel(selected: false, text: 'Romance'),
    SetupChipModel(selected: false, text: 'Shopping'),
    SetupChipModel(selected: false, text: 'Sight-seeing'),
    SetupChipModel(selected: false, text: 'Romance'),
  ];

  void rebuild() => setState(() {});
  @override
  Widget build(BuildContext context) {
    return SetupView(this);
  }
}
