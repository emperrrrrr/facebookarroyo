import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
        title: const Text(
          'Notifications',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: const [
          Icon(Icons.search),
          SizedBox(width: 10),
          Icon(Icons.more_vert),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(12.0),
            child: Text(
              'Today',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Expanded(
          child: ListView(
            children: const [
              NotificationTile(
                imagePath: 'assets/meta.png',
                title:
                    'Learn how Meta will use your info in new ways to personalize your experiences.',
                subtitle: '16h',
              ),
              NotificationTile(
                imagePath: 'assets/facts.png',
                title: '5 Unknown Facts recently shared 1 post.',
                subtitle: '20h',
              ),
              NotificationTile(
                imagePath: 'assets/fandango.png',
                title:
                    'Fandango posted a new reel: "Diego Luna, Jennifer Lopez, and Tonatiuh star in #KissOfTheSpiderWoman, in theater..."',
                subtitle: '2h',
              ),
              Padding(
                padding: EdgeInsets.all(12.0),
                child: Text(
                  'Earlier',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              NotificationTile(
                imagePath: 'assets/9gag.png',
                title: '9GAG posted a new reel: "White cat licks black cat".',
                subtitle: '1d',
              ),
              NotificationTile(
                imagePath: 'assets/defmusic.png',
                title:
                    'All Def Music posted a new reel: "#JimJones, #Fabolous & #Maino discuss being called an #OldYN".',
                subtitle: '2d',
              ),
              NotificationTile(
                imagePath: 'assets/ladbible.png',
                title:
                    'LADbible posted a new reel: "Cat saves baby from a wild leopard".',
                subtitle: '2d',
              ),
            ],
          ),
        ),
        Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                style: TextButton.styleFrom(
                backgroundColor: Colors.grey[200],
                  padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                  ),
                ),
                onPressed: () {},
                child: const Text(
                  'See previous notifications',
                style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NotificationTile extends StatelessWidget {
  final String imagePath;
  final String title;
  final String subtitle;

  const NotificationTile({
    super.key,
    required this.imagePath,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
    leading: CircleAvatar(
    backgroundImage: AssetImage(imagePath),
    radius: 22,
  ),
    title: Text(
      title,
      style: const TextStyle(fontSize: 14),
    ),
    subtitle: Text(subtitle),
    trailing: const Icon(Icons.more_vert),
    );
  }
}