import 'package:aguirre_mobprog/widgets/newsfeed_card.dart';
import 'package:material_ui/material_ui.dart';

class NewsfeedScreen extends StatelessWidget {
  const NewsfeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        NewsfeedCard(
          userName: 'J',
          postContent: 'hello owrld',
          date: '245 hours ago',
          numOfLikes: 174,
          profileImageUrl: 'https://i.pravatar.cc/150?img=12',
        ), // NewsfeedCard
        NewsfeedCard(
          userName: 'Tony Stark',
          postContent: 'I am Iron Man. #GeniusBillionairePhilanthropist',
          date: 'December 1, 2023',
          numOfLikes: 3000,
          profileImageUrl: 'https://i.pravatar.cc/150?img=68',
          imageUrl: 'https://images.unsplash.com/photo-1519608487953-e999c86e7455?auto=format&fit=crop&w=1200&q=80',
        ), // NewsfeedCard
      ],
    ); // ListView
  }
}
