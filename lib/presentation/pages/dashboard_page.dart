import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        backgroundColor: const Color.fromARGB(255, 113, 115, 223),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard Overview',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Card(
                    color: Colors.indigo[50],
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sales Summary',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                                color: Colors.grey[800]),
                          ),
                          SizedBox(height: 10),
                          Text('Total Sales: \$5000',
                              style: TextStyle(color: Colors.grey[800])),
                          Text('Total Orders: 270',
                              style: TextStyle(color: Colors.grey[800])),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Text(
              'Agent Performance',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView(
                children: [
                  _buildAgentCard('Youlanda', '50'),
                  _buildAgentCard('Angga', '50'),
                  _buildAgentCard('Cristy', '50'),
                  _buildAgentCard('Kathrina', '50'),
                  _buildAgentCard('Shani', '20'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAgentCard(String agentName, String ordersCompleted) {
    return Card(
      color: Colors.indigo[50],
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              agentName,
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800]),
            ),
            SizedBox(height: 5),
            Text('Orders Completed: $ordersCompleted',
                style: TextStyle(color: Colors.grey[800])),
          ],
        ),
      ),
    );
  }
}
