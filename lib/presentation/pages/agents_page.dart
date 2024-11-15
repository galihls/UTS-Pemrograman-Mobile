import 'package:flutter/material.dart';

class AgentsPage extends StatelessWidget {
  final List<Map<String, dynamic>> agents = [
    {
      'name': 'Youlanda',
      'orders': '50',
      'rating': '4.5',
      'photoUrl': 'assets/images/profileagent.jpg' // Lokal asset
    },
    {
      'name': 'Angga',
      'orders': '50',
      'rating': '4.0',
      'photoUrl': 'https://i.imgur.com/4YZzLkB.jpeg' // Online
    },
    {
      'name': 'Cristy',
      'orders': '50',
      'rating': '5.0',
      'photoUrl': 'assets/images/christyjkt48.jpeg' // Lokal asset
    },
    {
      'name': 'Kathrina',
      'orders': '50',
      'rating': '4.8',
      'photoUrl': 'assets/images/KathrinaJkt48.jpeg' // Lokal Asset
    },
    {
      'name': 'Shani',
      'orders': '20',
      'rating': '4.6',
      'photoUrl': 'assets/images/shani.jpeg' // Lokal Asset
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agents'),
        backgroundColor: const Color.fromARGB(255, 113, 115, 223),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: agents.length,
          itemBuilder: (context, index) {
            final agent = agents[index];
            return Card(
              color: Colors.indigo[50],
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                leading: CircleAvatar(
                  radius: 24,
                  backgroundImage: agent['photoUrl'].startsWith('http')
                      ? NetworkImage(agent['photoUrl'])
                      : AssetImage(agent['photoUrl']) as ImageProvider,
                ),
                title: Text(
                  agent['name'],
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
                subtitle: Text('Orders Completed: ${agent['orders']}'),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.star, color: Colors.amber),
                    SizedBox(width: 4),
                    Text(agent['rating']),
                  ],
                ),
                onTap: () {
                  // Code to open agent details, if needed
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
