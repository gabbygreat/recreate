import 'package:recreate/utils/utils.dart';

class AppButton extends StatefulWidget {
  final VoidCallback? onTap;
  final String text;
  const AppButton({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
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
    return Animate(
      controller: controller,
      effects: const [
        ScaleEffect(),
      ],
      child: ElevatedButton(
        onPressed: widget.onTap != null
            ? () async {
                controller.reverse();
                await Future.delayed(const Duration(milliseconds: 200));
                controller.forward();
                await Future.delayed(const Duration(milliseconds: 100));
                widget.onTap?.call();
              }
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.primary,
          fixedSize: Size(
            350.w,
            56.h,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.r),
          ),
        ),
        child: Text(
          widget.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
