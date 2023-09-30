import 'package:flutter/material.dart';

class PortraitLayoutScreen extends StatelessWidget {
  const PortraitLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              children: [
                CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: screenSize.width / 2,
                  child: CircleAvatar(
                    radius: (screenSize.width / 2),
                    backgroundImage: const NetworkImage(
                        'https://www.webbikeworld.com/wp-content/uploads/2021/09/2022-royal-enfield-classic-350-first-look-retro-motorcycle-india-7.jpg'),
                  ),
                ),
                const Text(
                  'Royal Enfield',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Text(
              'MCN states that the beauty of a beastie will be getting a few upgrades, most notably in a new primary balancer for the air-and-oil-cooled 349cc engine (courtesy of the Meteor), the upgraded 5-speed gearbox, and a new chassis to hold the heart of the machine.',
            ),
            const SizedBox(
              height: 20,
            ),
            GridView.count(
              physics: const ScrollPhysics(),
              crossAxisSpacing: 5,
              mainAxisSpacing: 5,
              shrinkWrap: true,
              crossAxisCount: 3,
              children: [
                for (int i = 1; i <= 9; i++)
                  Image.asset(
                      'image/royal.jpg',
                      fit: BoxFit.fill),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class LandscapeLayoutScreen extends StatelessWidget {
  const LandscapeLayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            backgroundColor: Colors.green,
            radius: screenSize.width / 6,
            child: CircleAvatar(
              radius: (screenSize.width / 6),
              backgroundImage: const NetworkImage(
                  'https://www.webbikeworld.com/wp-content/uploads/2021/09/2022-royal-enfield-classic-350-first-look-retro-motorcycle-india-7.jpg'),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          SingleChildScrollView(
            child: SizedBox(
              width: (screenSize.width) - (screenSize.width / 3) - 26,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    '',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'MCN states that the beauty of a beastie will be getting a few upgrades, most notably in a new primary balancer for the air-and-oil-cooled 349cc engine (courtesy of the Meteor), the upgraded 5-speed gearbox, and a new chassis to hold the heart of the machine.',
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GridView.count(
                    physics: const ScrollPhysics(),
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    shrinkWrap: true,
                    crossAxisCount: 3,
                    children: [
                      for (int i = 1; i <= 10; i++)
                        Image.asset(
                          'image/royal.jpg',
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
