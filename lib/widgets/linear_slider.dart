import 'package:recreate/utils/utils.dart';

class LinearSlider extends StatelessWidget {
  final double? height;
  final double? percent;
  final String? tag;
  const LinearSlider({
    super.key,
    this.height,
    this.percent,
    this.tag,
  });

  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: tag ?? 'xcxcx',
      child: Container(
        height: height ?? 13.h,
        decoration: BoxDecoration(
          color: AppColor.darkGrey,
          borderRadius: BorderRadius.circular(
            10.r,
          ),
        ),
        alignment: Alignment.centerLeft,
        child: AnimatedFractionallySizedBox(
          duration: const Duration(seconds: 1),
          widthFactor: percent != null ? (percent! / 100) : (5 / 6),
          child: Container(
            decoration: BoxDecoration(
              color: AppColor.darkBrown,
              borderRadius: BorderRadius.circular(
                10.r,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
