import 'package:recreate/utils/utils.dart';

class SectionTab extends StatelessWidget {
  final bool showAvatar;
  final double? width;
  const SectionTab({
    super.key,
    this.showAvatar = true,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 36.h,
      width: width,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    color: AppColor.grey,
                    width: 1.r,
                  ),
                  borderRadius: BorderRadius.circular(10.r),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: SvgPicture.asset(
                          AppSvg.flag,
                          height: 25.h,
                        ),
                      ),
                      4.horizontalSpace,
                      SvgPicture.asset(
                        AppSvg.chevronDown,
                      ),
                    ],
                  ),
                  InkWell(
                    overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent,
                    ),
                    onTap: () => context.pushNamed(StreakScreen.name),
                    child: Hero(
                      tag: 'fire',
                      flightShuttleBuilder: (BuildContext flightContext,
                              Animation<double> animation,
                              HeroFlightDirection flightDirection,
                              BuildContext fromHeroContext,
                              BuildContext toHeroContext) =>
                          Material(
                        color: Colors.transparent,
                        child: toHeroContext.widget,
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(bottom: 5.h),
                            child: Image.asset(
                              AppGif.fire,
                              width: 20,
                              height: 20,
                            ),
                          ),
                          4.horizontalSpace,
                          Text(
                            "2",
                            style: TextStyle(
                              fontSize: 12.sp,
                              color: AppColor.primary,
                              fontWeight: FontWeight.w500,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        AppSvg.point,
                      ),
                      4.horizontalSpace,
                      Text(
                        "17",
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: AppColor.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  ),
                  SvgPicture.asset(
                    AppSvg.bell,
                  ),
                ],
              ),
            ),
          ),
          if (showAvatar) ...[
            16.horizontalSpace,
            Container(
              width: 36.r,
              height: 36.r,
              decoration: const BoxDecoration(
                color: AppColor.lightPink,
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                AppImages.face,
              ),
            ),
          ]
        ],
      ),
    );
  }
}
