import 'package:aguirre_mobprog/constants.dart';
import 'package:aguirre_mobprog/widgets/notification.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:material_ui/material_ui.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBackgroundColor,
      width: ScreenUtil().screenWidth,
      child: ListView(
        children: [
          NotificationWidget(
            name: 'John Doe',
            post: 'Hello World!',
            description: 'This is a sample notification.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Jane Smith',
            post: 'Birthday.',
            description: 'Liked a post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Alice Johnson',
            post: 'Flutter Rocks!',
            description: 'Commented on your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Bob Brown',
            post: 'Check this out!',
            description: 'Shared a post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Charlie Davis',
            post: 'Good Morning!',
            description: 'Sent you a friend request.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Eve Wilson',
            post: 'New Event',
            description: 'Invited you to an event.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Olivia Martin',
            post: 'Weekend photos',
            description: 'Liked your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'James Wilson',
            post: 'Coffee break',
            description: 'Commented: "Looks great!"',
          ),
          Divider(),
          NotificationWidget(
            name: 'Amelia Garcia',
            post: 'Hello World!',
            description: 'Reacted to your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Benjamin Lee',
            post: 'Family time',
            description: 'Shared your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Charlotte Clark',
            post: 'Weekend photos',
            description: 'Mentioned you in a comment.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Henry Lewis',
            post: 'New playlist',
            description: 'Liked your comment.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Evelyn Walker',
            post: 'Homemade cookies',
            description: 'Commented: "I want to try these!"',
          ),
          Divider(),
          NotificationWidget(
            name: 'Alexander Hall',
            post: 'Hiking trail',
            description: 'Sent you a friend request.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Harper Young',
            post: 'Relaxing weekend',
            description: 'Liked your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Daniel Allen',
            post: 'New Event',
            description: 'Invited you to an event.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Ella King',
            post: 'Flutter Rocks!',
            description: 'Reacted to your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Michael Wright',
            post: 'Good Morning!',
            description: 'Commented: "Have a wonderful day!"',
          ),
          Divider(),
          NotificationWidget(
            name: 'Grace Scott',
            post: 'Birthday.',
            description: 'Shared your post.',
          ),
          Divider(),
          NotificationWidget(
            name: 'Samuel Green',
            post: 'Check this out!',
            description: 'Liked your post.',
          ),
        ],
      ),
    );
  }
}
