import 'package:flutter/material.dart';
import 'package:otithee_com_clone/widgets/drawer_tiles.dart';
import 'package:otithee_com_clone/widgets/promotional_video_card/promotional_video_card.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/blog_cards.dart';
import '../widgets/service_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/img_1.png'),
                  fit: BoxFit.cover,
                )),
                child: Text(
                  'Otithee.com',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                  ),
                ),
              ),
              DrawerTiles(
                icon: Icons.bedroom_child,
                text: 'Become an Agent',
                onTap: () {
                  // Add the onTap action for Become an Agent.
                },
              ),
              DrawerTiles(
                icon: Icons.g_translate,
                text: 'About Us',
                onTap: () {
                  // Add the onTap action for About Us.
                },
              ),
              DrawerTiles(
                icon: Icons.person,
                text: 'My Bookings',
                onTap: () {
                  // Add the onTap action for My Bookings.
                },
              ),
              DrawerTiles(
                icon: Icons.play_arrow,
                text: 'Tutorial',
                onTap: () {
                  // Add the onTap action for Tutorial.
                },
              ),
              DrawerTiles(
                icon: Icons.video_call,
                text: 'Vlog',
                onTap: () {
                  // Add the onTap action for Vlog.
                },
              ),
              DrawerTiles(
                icon: Icons.question_answer,
                text: 'F.A.Q',
                onTap: () {
                  // Add the onTap action for F.A.Q.
                },
              ),
              DrawerTiles(
                icon: Icons.mail,
                text: 'Contact Us',
                onTap: () {
                  // Add the onTap action for Contact Us.
                },
              ),
              DrawerTiles(
                icon: Icons.quick_contacts_dialer_outlined,
                text: 'Terms & Conditions',
                onTap: () {
                  // Add the onTap action for Terms & Conditions.
                },
              ),
              DrawerTiles(
                icon: Icons.security,
                text: 'Privacy Policy',
                onTap: () {
                  // Add the onTap action for Privacy Policy.
                },
              ),
              DrawerTiles(
                icon: Icons.money,
                text: 'Payment Policy',
                onTap: () {
                  // Add the onTap action for Payment Policy.
                },
              ),
              DrawerTiles(
                icon: Icons.messenger,
                text: 'Live Chat',
                onTap: () {
                  // Add the onTap action for Live Chat.
                },
              ),
              DrawerTiles(
                icon: Icons.logout_rounded,
                text: 'Log Out',
                onTap: () {
                  // Add the onTap action for Log Out.
                },
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                  ),
                  child: GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse(
                          'https://www.fb.com')); // Open the URL in a web view.
                    },
                    child: const Text.rich(
                      TextSpan(
                        text: 'Design and Developed by ',
                        style: TextStyle(
                            color: Colors.black), // Rest of the text is white
                        children: <TextSpan>[
                          TextSpan(
                            text: 'OSSL',
                            style: TextStyle(
                                color: Colors.green), // 'OSSL' is green
                          ),
                        ],
                      ),
                    ),
                  )),
              const SizedBox(height: 20),
            ],
          ),
        ),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(
              icon: Stack(
                children: <Widget>[
                  const Icon(Icons.notifications), // Notification icon
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red,
                      ),
                      constraints: BoxConstraints(
                        minWidth: 14,
                        minHeight: 14,
                      ),
                      child: Text(
                        '2', // Replace with the desired number
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                // Add the onPressed action for the IconButton.
              },
            )

            // IconButton(
            //   icon: const Icon(Icons.notifications),
            //   onPressed: () {},
            // ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 11,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  //crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Apartment",
                        onTap: () {}),
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Hotel",
                        onTap: () {}),
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Resort",
                        onTap: () {})
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Shared Room",
                        onTap: () {}),
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Convention Hall",
                        onTap: () {}),
                    ServiceCard(
                        imagePath: "assets/icons/splashed.png",
                        cardName: "Transport",
                        onTap: () {})
                  ],
                )
              ],
            ),
            const Text(
              "Explore the beauty of Bangladesh",
              style: TextStyle(
                  fontSize: 15,
                  //fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                  BlogCards(
                      imagePath: "assets/images/img_1.png",
                      title: "Resort Package",
                      subTitle: "1 Experience",
                      onTap: () {}),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  PromotionalVideoCard(
                    videoID: "CuricnOaR98",
                  ),
                  PromotionalVideoCard(
                    videoID: "l5jMV7MsZ5M",
                  ),
                  PromotionalVideoCard(
                    videoID: "1_Gw8mH_f78",
                  )
                ],
              ),
            ),
          ],
        ));
  }
}
