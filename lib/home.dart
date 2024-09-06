import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('JULIUS AND TINTIN'),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Section with Image
            Container(
              child: Column(
                children: [
                  Image.asset('assets/your_image.png'), // Replace with actual image
                ],
              ),
            ),
            SizedBox(height: 20),
            // Live Vote Results
            Text(
              'Live Vote Results',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Winner Contestant'),
            SizedBox(height: 10),
            Card(
              color: Colors.pink[100],
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/winner.png'), // Replace with image
                      radius: 40,
                    ),
                    SizedBox(width: 16),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Omar D. Regalado',
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text('Lorem Ipsum loremipsum'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            // Total Votes Section
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                VoteCard(
                  label: 'Total Votes',
                  value: '560',
                  color: Colors.blueAccent,
                ),
                VoteCard(
                  label: 'Total Votes',
                  value: '50%',
                  color: Colors.teal,
                ),
              ],
            ),
            SizedBox(height: 30),
            // Other Contestants
            Text('Others Contestant', style: TextStyle(fontSize: 18)),
            SizedBox(height: 10),
            ContestantCard(
              name: 'Chester Cheng',
              votes: '196 Votes',
              percentage: '35%',
              backgroundColor: Colors.blue[100]!,
            ),
            ContestantCard(
              name: 'Robert Soliman',
              votes: '56 Votes',
              percentage: '10%',
              backgroundColor: Colors.green[100]!,
            ),
            ContestantCard(
              name: 'Kristine Lim',
              votes: '28 Votes',
              percentage: '5%',
              backgroundColor: Colors.pink[100]!,
            ),
            SizedBox(height: 20),
            // Contest Videos
            Text(
              'Contest Videos',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              'https://www.youtube.com/watch?v=aLtXzKyNxkY',
              style: TextStyle(color: Colors.blue),
            ),
            SizedBox(height: 30),
            // Upcoming Events
            Text(
              'Upcoming Events',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            EventCard(
              eventName: 'Music Festivals',
              date: '30/09/2024',
              imagePath: 'assets/music_event.png', // Replace with image
            ),
            EventCard(
              eventName: 'Sports Events',
              date: '30/09/2024',
              imagePath: 'assets/sports_event.png', // Replace with image
            ),
          ],
        ),
      ),
    );
  }
}

class VoteCard extends StatelessWidget {
  final String label;
  final String value;
  final Color color;

  VoteCard({required this.label, required this.value, required this.color});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: color,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.white),
            ),
            Text(
              value,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class ContestantCard extends StatelessWidget {
  final String name;
  final String votes;
  final String percentage;
  final Color backgroundColor;

  ContestantCard({
    required this.name,
    required this.votes,
    required this.percentage,
    required this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/contestant.png'), // Replace with actual image
        ),
        title: Text(name),
        subtitle: Text(votes),
        trailing: Text(percentage),
      ),
    );
  }
}

class EventCard extends StatelessWidget {
  final String eventName;
  final String date;
  final String imagePath;

  EventCard({required this.eventName, required this.date, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Image.asset(imagePath, height: 50), // Replace with actual image
        title: Text(eventName),
        subtitle: Text('Date: $date'),
        trailing: Icon(Icons.arrow_forward),
      ),
    );
  }
}
