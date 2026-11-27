import 'package:aguirre_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'Pompompurin',
          postContent: 'hello owrld ^-^',
          date: '45 hours ago',
          numOfLikes: 10,
          profileImageUrl: 'assets/images/pompompurin.jpg',
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Santa Claus',
          postContent: 'Merry Christmas!',
          date: 'December 25, 2023',
          numOfLikes: 80000,
          profileImageUrl: 'https://images.pexels.com/photos/40895019/pexels-photo-40895019.jpeg',
          imageUrl: 'assets/images/xmas-village.jpg',
        ), // NewsfeedCard
      ],
    ); // ListView
  }
}
