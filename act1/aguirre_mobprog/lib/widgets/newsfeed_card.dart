import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aguirre_mobprog/constants.dart';
import 'package:aguirre_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedCard extends StatelessWidget {
  final String userName;
  final String postContent;
  final String date;
  final int? numOfLikes;
  final String? imageUrl;
  final String? profileImageUrl;

  const NewsfeedCard({
    super.key,
    required this.userName,
    required this.postContent,
    required this.date,
    this.numOfLikes,
    this.imageUrl,
    this.profileImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final imageUrl = this.imageUrl;
    final screenUtilSp = ScreenUtil().setSp(10);
    final screenUtilWidth = ScreenUtil().setWidth(10);
    final screenUtilFontUserNameSize = ScreenUtil().setSp(15);
    final screenUtilIconSize = ScreenUtil().setSp(15);

    return Card(
      margin: EdgeInsets.all(screenUtilSp),
      child: Padding(
        padding: EdgeInsets.all(screenUtilSp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _buildProfileAvatar(),
                SizedBox(width: screenUtilWidth),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: userName,
                      fontSize: screenUtilFontUserNameSize,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ), // CustomText
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        CustomText(
                          text: date,
                          fontSize: ScreenUtil().setSp(12),
                          color: Colors.grey,
                        ), // CustomText
                        SizedBox(width: ScreenUtil().setWidth(3)),
                        Icon(
                          Icons.public,
                          color: Colors.grey,
                          size: screenUtilIconSize,
                        ), // Icon
                      ],
                    ), // Row
                  ],
                ), // Column
                Spacer(),
                Icon(Icons.more_horiz),
              ],
            ), // Row
            SizedBox(height: ScreenUtil().setHeight(5)),
            // post Content
            CustomText(
              text: postContent,
              fontSize: ScreenUtil().setSp(12),
              color: Colors.black,
            ), // CustomText
            if (imageUrl != null && imageUrl.trim().isNotEmpty) ...[
              SizedBox(height: ScreenUtil().setHeight(5)),
              ClipRRect(
                borderRadius: BorderRadius.circular(
                  ScreenUtil().setSp(4),
                ),
                child: AspectRatio(
                  aspectRatio: 16 / 9,
                  child: Image(
                    image: imageUrl.startsWith('http')
                        ? NetworkImage(imageUrl)
                        : AssetImage(imageUrl),
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      color: Colors.grey[200],
                      alignment: Alignment.center,
                      child: Icon(Icons.image_not_supported, color: Colors.grey),
                    ),
                  ),
                ),
              ),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _FeedActionButton(
                  icon: Icon(Icons.thumb_up, color: fbPrimary),
                  label: (numOfLikes ?? 0).toString(),
                ),
                const _FeedActionButton(
                  icon: Icon(Icons.comment, color: fbDarkPrimary),
                  label: 'Comment',
                ),
                const _FeedActionButton(
                  icon: Icon(Icons.redo, color: fbDarkPrimary),
                  label: 'Share',
                ),
              ],
            ), // Row
            Row(
              children: [
                _buildProfileAvatar(radius: ScreenUtil().setSp(16)),
                SizedBox(width: ScreenUtil().setWidth(10)),
                Container(
                  padding: EdgeInsets.fromLTRB(
                    ScreenUtil().setWidth(10),
                    0,
                    0,
                    0,
                  ), // EdgeInsets.fromLTRB
                  alignment: Alignment.centerLeft,
                  height: ScreenUtil().setHeight(25),
                  width: ScreenUtil().setWidth(330),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.all(
                      Radius.circular(ScreenUtil().setSp(10)),
                    ), // BorderRadius.all
                  ), // BoxDecoration
                  child: CustomText(
                    text: 'Write a comment...',
                    fontSize: ScreenUtil().setSp(11),
                    color: Colors.grey,
                  ), // CustomText
                ), // Container
              ],
            ), // Row
            SizedBox(height: ScreenUtil().setHeight(10)),
            CustomText(
              text: 'View all comments',
              fontSize: ScreenUtil().setSp(12),
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ), // CustomText
          ],
        ), // Column
      ), // Padding
    ); // Card
  }

  Widget _buildProfileAvatar({double radius = 20}) {
    final profileImageUrl = this.profileImageUrl;
    final initials = userName
        .split(' ')
        .where((part) => part.isNotEmpty)
        .take(2)
        .map((part) => part[0])
        .join()
        .toUpperCase();

    return CircleAvatar(
      radius: radius,
      backgroundColor: fbLightPrimary,
      child: profileImageUrl == null || profileImageUrl.trim().isEmpty
          ? Text(initials, style: const TextStyle(color: Colors.white))
          : ClipOval(
              child: Image(
                image: profileImageUrl.startsWith('http')
                    ? NetworkImage(profileImageUrl)
                    : AssetImage(profileImageUrl),
                width: radius * 2,
                height: radius * 2,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) => Text(
                  initials,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
    );
  }
}

class _FeedActionButton extends StatelessWidget {
  const _FeedActionButton({
    required this.icon,
    required this.label,
  });

  final Widget icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {},
      icon: icon,
      label: CustomText(
        text: label,
        fontSize: ScreenUtil().setSp(12),
        color: fbDarkPrimary,
      ),
    );
  }
}