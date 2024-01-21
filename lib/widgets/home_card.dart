import 'package:recreate/utils/utils.dart';

class HomeCard extends StatefulWidget {
  final String svg;
  final String text;
  final double percent;
  final String tag;
  final VoidCallback? onTap;

  const HomeCard({
    super.key,
    required this.percent,
    required this.svg,
    required this.text,
    required this.tag,
    this.onTap,
  });

  @override
  State<HomeCard> createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {
  var scale = ValueNotifier(1.0);
  var percent = ValueNotifier(0.0);

  @override
  void initState() {
    super.initState();
    Future.delayed(200.milliseconds, () => percent.value = widget.percent);
  }

  @override
  void dispose() {
    scale.dispose();
    percent.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(10.r),
      onTap: widget.onTap != null
          ? () async {
              scale.value = 0.9;
              await Future.delayed(200.milliseconds);
              scale.value = 1;
              widget.onTap?.call();
            }
          : null,
      child: ValueListenableBuilder(
        valueListenable: scale,
        builder: (context, sc, _) {
          return AnimatedScale(
            duration: const Duration(seconds: 1),
            scale: sc,
            child: Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.primaryLight,
                  width: 1.5,
                ),
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(widget.svg)
                      .animate()
                      .fadeIn(duration: 1.seconds),
                  Text(
                    widget.text,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "You completed ${widget.percent.toInt()}%",
                        maxLines: 1,
                        style: const TextStyle(
                          color: AppColor.darkGrey,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ).animate().moveX(),
                      8.verticalSpace,
                      ValueListenableBuilder(
                        valueListenable: percent,
                        builder: (context, value, _) {
                          return LinearSlider(
                            height: 8.h,
                            percent: value,
                            tag: widget.tag,
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    ).animate().moveY();
  }
}
