import 'package:flutter/material.dart';
import 'package:otithee_com_clone/main.dart';
import 'package:otithee_com_clone/pages/tutorial.dart';
import 'package:otithee_com_clone/widgets/drawer_tiles.dart';
import 'package:otithee_com_clone/widgets/promotional_video_card/promotional_video_card.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../widgets/blog_cards.dart';
import '../widgets/service_card.dart';
import 'home_page_display.dart';

class HomePage extends StatelessWidget {
  final int _selectedIndex = 0;

  final List<Widget> _widgetOptions = <Widget>[
    SafeArea(child: HomePageDisplay()),
    Text("rfg"),
    // Text('Inbox'),
    Text("Profile")
  ];

  HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: PersistentTabView(
        context,
        controller: PersistentTabController(initialIndex: _selectedIndex),
        screens: _widgetOptions,
        items: [
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.home),
            title: 'Home',
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.search),
            title: 'Search',
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
          PersistentBottomNavBarItem(
            icon: const Icon(Icons.person),
            title: 'Profile',
            activeColorPrimary: Colors.blue,
            inactiveColorPrimary: Colors.grey,
          ),
        ],
        confineInSafeArea: true,
        backgroundColor: Colors.white,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(10.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties(
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        screenTransitionAnimation: ScreenTransitionAnimation(
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style14,
      ),
      //body: HomePageDisplay(),
    );
  }
}

// class HomePageDisplay extends StatelessWidget {
//   const HomePageDisplay({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.start,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         const SizedBox(
//           height: 26,
//         ),
//         Column(
//           mainAxisAlignment: MainAxisAlignment.start,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Row(
//               //crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Apartment",
//                     onTap: () {}),
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Hotel",
//                     onTap: () {}),
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Resort",
//                     onTap: () {})
//               ],
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.end,
//               children: [
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Shared Room",
//                     onTap: () {}),
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Convention Hall",
//                     onTap: () {}),
//                 ServiceCard(
//                     imagePath: "assets/icons/splashed.png",
//                     cardName: "Transport",
//                     onTap: () {})
//               ],
//             )
//           ],
//         ),
//         const Text(
//           "Explore the beauty of Bangladesh",
//           style: TextStyle(
//               fontSize: 15,
//               //fontWeight: FontWeight.bold,
//               color: Colors.green),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//               BlogCards(
//                   imagePath: "assets/images/img_1.png",
//                   title: "Resort Package",
//                   subTitle: "1 Experience",
//                   onTap: () {}),
//             ],
//           ),
//         ),
//         SizedBox(
//           height: 20,
//         ),
//         SingleChildScrollView(
//           scrollDirection: Axis.horizontal,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: [
//               PromotionalVideoCard(
//                 videoID: "CuricnOaR98",
//               ),
//               PromotionalVideoCard(
//                 videoID: "l5jMV7MsZ5M",
//               ),
//               PromotionalVideoCard(
//                 videoID: "1_Gw8mH_f78",
//               )
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
