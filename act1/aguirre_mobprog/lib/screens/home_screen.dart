import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:aguirre_mobprog/constants.dart';
import 'package:aguirre_mobprog/screens/newsfeed_screen.dart';
import 'package:aguirre_mobprog/screens/notification_screen.dart';
import 'package:aguirre_mobprog/widgets/custom_text.dart';
import 'package:material_ui/material_ui.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackgroundColor,
      appBar: AppBar(
        backgroundColor: fbSecondary,
        foregroundColor: fbDarkPrimary,
        shadowColor: fbTextColorWhite,
        elevation: 2,
        title: CustomText(
          text: _selectedIndex == 1 ? 'Notifications' : 'SNAPI',
          fontSize: ScreenUtil().setSp(25),
          color: snapiYellow,
          fontFamily: 'Klavika',
          fontWeight: FontWeight(700),
        ), // CustomText
      ), // AppBar
      body: PageView(
        controller: _pageController,
        children: const <Widget>[NewsfeedScreen(), NotificationScreen()],
        onPageChanged: (page) {
          setState(() {
            _selectedIndex = page;
          });
        },
      ), // PageView
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: appSurfaceColor,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        onTap: _onTappedBar,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ), // BottomNavigationBarItem
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
        selectedItemColor: fbPrimary,
        unselectedItemColor: fbMutedTextColor,
        currentIndex: _selectedIndex,
      ), // BottomNavigationBar
    ); // Scaffold
  }

  void _onTappedBar(int value) {
    if (value > 1) return;

    setState(() {
      _selectedIndex = value;
    });
    _pageController.jumpToPage(value);
  }
}
