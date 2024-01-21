import 'package:recreate/utils/utils.dart';

class VideoLesson extends StatelessWidget {
  const VideoLesson({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(
        left: 22.w,
        right: 22.w,
        top: 30.h,
      ),
      children: const [
        LessonCard(
          text: 'First Trip',
          description:
              "Here you will listen to\nconversations between tourists,\nand learn to speak together with\nthem!",
          image: AppImages.firstTrip,
          buttonColor: AppColor.primary,
        ),
        LessonCard(
          text: 'Freelance Work',
          description:
              "After taking this classes, you will\nbe able to take orders from\nforeigners!",
          image: AppImages.freelanceWork,
          buttonColor: AppColor.primary,
        ),
        LessonCard(
          text: 'First Meeting',
          description:
              "You will learn to communicate\nwith your colleagues and\nunderstand them!",
          image: AppImages.firstMeeting,
          buttonColor: AppColor.primary,
        ),
        LessonCard(
          text: 'Meeting With Partners',
          description:
              "You will learn to communicate\nwith your colleagues and\nunderstand them!",
          image: AppImages.meetingPartners,
          buttonColor: AppColor.primary,
        ),
      ],
    );
  }
}
