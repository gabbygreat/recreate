import 'package:dotted_border/dotted_border.dart';
import 'package:recreate/utils/utils.dart';

class SetupChip extends StatefulWidget {
  final bool selected;
  final String text;
  final VoidCallback? onTap;
  const SetupChip({
    super.key,
    required this.selected,
    required this.text,
    this.onTap,
  });

  @override
  State<SetupChip> createState() => _SetupChipState();
}

class _SetupChipState extends State<SetupChip>
    with SingleTickerProviderStateMixin {
  late bool selected;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    selected = widget.selected;
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
      reverseDuration: const Duration(seconds: 1),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        controller.reverse();
        await Future.delayed(const Duration(milliseconds: 200));
        controller.forward();
        await Future.delayed(const Duration(milliseconds: 100));
        if (widget.onTap != null) {
          widget.onTap?.call();
        } else {
          selected = !selected;
          setState(() {});
        }
      },
      child: Animate(
        controller: controller,
        effects: const [
          ScaleEffect(),
        ],
        child: !selected
            ? DottedBorder(
                borderType: BorderType.RRect,
                radius: Radius.circular(30.r),
                dashPattern: const [8, 3],
                color: AppColor.primary,
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 7.h,
                ),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              )
            : Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 8.w,
                  vertical: 7.h,
                ),
                decoration: BoxDecoration(
                  color: AppColor.brown1,
                  borderRadius: BorderRadius.circular(30.r),
                  border: Border.all(
                    color: AppColor.primary,
                  ),
                ),
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
      ),
    );
  }
}
