import 'package:recreate/utils/utils.dart';

class LessonCard extends StatelessWidget {
  final String image;
  final String text;
  final String description;
  final Color buttonColor;
  const LessonCard({
    super.key,
    required this.buttonColor,
    required this.description,
    required this.image,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    var height = 150.h;
    return Container(
      margin: EdgeInsets.only(bottom: 30.h),
      height: height,
      child: Stack(
        children: [
          Container(
            height: height - (45.r / 2),
            padding: EdgeInsets.symmetric(
              horizontal: 25.w,
              vertical: 14.h,
            ),
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.r),
              ),
              image: DecorationImage(
                image: AssetImage(
                  image,
                ),
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ].animate(delay: 500.ms).fadeIn(duration: 1.seconds).moveY(),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 45.r,
              width: 45.r,
              decoration: BoxDecoration(
                color: buttonColor,
                shape: BoxShape.circle,
              ),
            ),
          )
        ].animate(interval: 300.ms).fadeIn().moveY(),
      ),
    );
  }
}
