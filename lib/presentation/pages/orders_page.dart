import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  final List<Map<String, dynamic>> orders = [
    {
      'orderId': '001',
      'agent': 'Youlanda',
      'status': 'Completed',
      'product': 'Nike'
    },
    {
      'orderId': '002',
      'agent': 'Angga',
      'status': 'In Progress',
      'product': 'Adidas'
    },
    {
      'orderId': '003',
      'agent': 'Cristy',
      'status': 'Pending',
      'product': 'Puma'
    },
    {
      'orderId': '004',
      'agent': 'Kathrina',
      'status': 'Completed',
      'product': 'Vans'
    },
    {
      'orderId': '005',
      'agent': 'Shani',
      'status': 'Pending',
      'product': 'Nike'
    },
    {
      'orderId': '006',
      'agent': 'Youlanda',
      'status': 'In Progress',
      'product': 'Adidas'
    },
    {
      'orderId': '007',
      'agent': 'Angga',
      'status': 'Completed',
      'product': 'Puma'
    },
    {
      'orderId': '008',
      'agent': 'Cristy',
      'status': 'Pending',
      'product': 'Vans'
    },
    {
      'orderId': '009',
      'agent': 'Kathrina',
      'status': 'In Progress',
      'product': 'Nike'
    },
    {
      'orderId': '010',
      'agent': 'Shani',
      'status': 'Completed',
      'product': 'Adidas'
    },
  ];

  final Map<String, String> productPrices = {
    'Nike': 'Rp3.300.000',
    'Adidas': 'Rp3.200.000',
    'Puma': 'Rp2.100.000',
    'Vans': 'Rp1.400.000',
  };

  String _selectedStatus = 'All';

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> filteredOrders = _selectedStatus == 'All'
        ? orders
        : orders.where((order) => order['status'] == _selectedStatus).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Orders'),
        backgroundColor: const Color.fromARGB(255, 113, 115, 223),
        actions: [
          DropdownButton<String>(
            value: _selectedStatus,
            items: ['All', 'Pending', 'In Progress', 'Completed']
                .map((status) => DropdownMenuItem<String>(
                      value: status,
                      child: Text(status),
                    ))
                .toList(),
            onChanged: (value) {
              setState(() {
                _selectedStatus = value!;
              });
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: filteredOrders.length,
          itemBuilder: (context, index) {
            final order = filteredOrders[index];
            final productPrice = productPrices[order['product']] ?? 'Unknown';
            return Card(
              color: Colors.indigo[50],
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              margin: EdgeInsets.symmetric(vertical: 8),
              child: ListTile(
                title: Text(
                  'Order ID: ${order['orderId']}',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800]),
                ),
                subtitle: Text(
                    'Agent: ${order['agent']}\nProduct: ${order['product']}\nPrice: $productPrice'),
                trailing: Text(
                  order['status'],
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: _getStatusColor(order['status'])),
                ),
                onTap: () {
                  // Code to open order details, if needed
                },
              ),
            );
          },
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'Completed':
        return Colors.green;
      case 'In Progress':
        return Colors.orange;
      case 'Pending':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }
}
