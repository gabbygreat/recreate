import 'package:recreate/utils/utils.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        150.verticalSpace,
        Center(
          child: SvgPicture.asset(
            AppSvg.bro,
          ),
        ),
        37.verticalSpace,
        Text(
          "Coming Soon!",
          style: TextStyle(
            fontSize: 32.sp,
            fontWeight: FontWeight.w600,
            color: AppColor.primary,
          ),
        ),
        Text(
          "We’ll be up soon, keep an eye on us.",
          style: TextStyle(
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
            color: AppColor.darkGrey,
          ),
        ),
        20.verticalSpace,
        SvgPicture.asset(
          AppSvg.lightening,
          width: 40.r,
          height: 40.r,
        )
      ],
    );
  }
}
