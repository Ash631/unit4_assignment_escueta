import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Row(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/joshua.JPG'), 
                  ),
                  SizedBox(width: 16),
                  Text(
                    'Marc Joshua H. Escueta',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              _buildInfoSection('Email', Icons.email,
                  'MarcJoshua.Escueta@wvsu.edu.ph'),
              _buildInfoSection('Phone', Icons.phone, '+639163371853'),
              _buildInfoSection(
                  'Location', Icons.location_on, 'Santa Barbara, Iloilo'),
              _buildInfoSection('Hobbies', Icons.sports_baseball,
                  'Studying, Coding, Dancing, Writing'),
              _buildInfoSection('GitHub', Icons.code, 'www.github.com/Ash631'),
              const SizedBox(height: 24),
              const Text(
                'My Biography',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                'Im a writer and dancer, constantly exploring the power of expression through poetry, novels, blogs, hip-hop, and contemporary dance. Words and movement are my tools for capturing emotions, sparking conversations, and exploring the human experience. As the Public Relations Vice President of the Cyb Robotics organization, I blend my love for technology with my creative spirit, advocating for innovation and inspiring future generations. My journey is a where I continually seek new ways to express myself, connect with others, and contribute to the world through art and technology. ',
                textAlign: TextAlign.justify,
              ),


              const SizedBox(height: 24),
              const Text(
                'Skills',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              _buildSkillsGridView(), 

              const SizedBox(height: 24),
              const Text(
                'Experience',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              _buildExperienceTable(),

            ],
          ),
        ),
      ),
    );
  }


  Widget _buildInfoSection(String title, IconData icon, String data) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 8),
            Text('$title: '),
            const Spacer(), 
            Text(data),

          ],
        ),
      ),
    );
  }

  Widget _buildSkillsGridView() {
    return GridView.count(
      crossAxisCount: 3,
      shrinkWrap: true, 
      physics: const NeverScrollableScrollPhysics(), 
      children: const [
         Chip(label: Text('Flutter')),
         Chip(label: Text('Dart')),
         Chip(label: Text('Firebase')),
         Chip(label: Text('Python')),
         Chip(label: Text('Java')),
         Chip(label: Text('C++')),
      ],
    );
  }



  Widget _buildExperienceTable() {
    return Table(
      border: TableBorder.all(),
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(3),
        2: FlexColumnWidth(1),
      },
      children: const [
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Position'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Company'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Years'),
          ),
        ]),
        TableRow(children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('Data Transcriber'),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('PMSU Center LTI '),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('2020-2023'),
          ),
        ]),


      ],
    );
  }
}