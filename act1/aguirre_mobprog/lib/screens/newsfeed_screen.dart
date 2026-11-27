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
        NewsfeedCard(
          userName: 'Mia Chen',
          postContent: 'Starting the day with a good cup of coffee.',
          date: '2 hours ago',
          numOfLikes: 24,
          profileImageUrl: 'https://i.pravatar.cc/150?img=47',
        ),
        NewsfeedCard(
          userName: 'Liam Parker',
          postContent: 'Finally finished my weekend hiking trail!',
          date: '4 hours ago',
          numOfLikes: 56,
          profileImageUrl: 'https://i.pravatar.cc/150?img=12',
        ),
        NewsfeedCard(
          userName: 'Sofia Reyes',
          postContent: 'Nothing beats spending time with family.',
          date: '6 hours ago',
          numOfLikes: 38,
          profileImageUrl: 'https://i.pravatar.cc/150?img=32',
        ),
        NewsfeedCard(
          userName: 'Noah Williams',
          postContent: 'New playlist for the long commute is ready.',
          date: '8 hours ago',
          numOfLikes: 17,
          profileImageUrl: 'https://i.pravatar.cc/150?img=14',
        ),
        NewsfeedCard(
          userName: 'Ava Patel',
          postContent: 'Homemade cookies make any day better!',
          date: '10 hours ago',
          numOfLikes: 72,
          profileImageUrl: 'https://i.pravatar.cc/150?img=44',
        ),
        NewsfeedCard(
          userName: 'Ethan Brooks',
          postContent: 'Taking a little break and enjoying the sunshine.',
          date: '12 hours ago',
          numOfLikes: 29,
          profileImageUrl: 'https://i.pravatar.cc/150?img=11',
        ),
        NewsfeedCard(
          userName: 'Isabella Nguyen',
          postContent: 'Just learned something new today. Keep practicing!',
          date: '1 day ago',
          numOfLikes: 43,
          profileImageUrl: 'https://i.pravatar.cc/150?img=49',
        ),
        NewsfeedCard(
          userName: 'Oliver James',
          postContent: 'Wishing everyone a relaxing weekend!',
          date: '1 day ago',
          numOfLikes: 61,
          profileImageUrl: 'https://i.pravatar.cc/150?img=13',
        ),
      ],
    ); // ListView
  }
}
