import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'agents_page.dart';
import 'orders_page.dart';
import 'products_page.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    DashboardPage(),
    AgentsPage(),
    OrdersPage(),
    ProductsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 300),
        child: _pages[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.indigo, // Warna ikon yang dipilih
        unselectedItemColor: Colors.grey, // Warna ikon yang tidak dipilih
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.dashboard), label: 'Dashboard'),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: 'Agents'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: 'Products'),
        ],
      ),
    );
  }
}
