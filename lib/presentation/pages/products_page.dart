import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class ProductsPage extends StatefulWidget {
  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> {
  List<Map<String, dynamic>> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  Future<void> _loadProducts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? productsString = prefs.getString('products');
    if (productsString != null) {
      setState(() {
        products = List<Map<String, dynamic>>.from(json.decode(productsString));
      });
    } else {
      // Initialize with default products if no data is found
      products = [
        {'name': 'Product A', 'price': '\$100', 'stock': '50 units'},
        {'name': 'Product B', 'price': '\$200', 'stock': '75 units'},
        {'name': 'Product C', 'price': '\$150', 'stock': '20 units'},
        {'name': 'Product D', 'price': '\$300', 'stock': '100 units'},
      ];
      _saveProducts();
    }
  }

  Future<void> _saveProducts() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('products', json.encode(products));
  }

  void _editProduct(int index) {
    final product = products[index];
    final nameController = TextEditingController(text: product['name']);
    final priceController = TextEditingController(text: product['price']);
    final stockController = TextEditingController(text: product['stock']);

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Product'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Product Name'),
              ),
              TextField(
                controller: priceController,
                decoration: InputDecoration(labelText: 'Price'),
              ),
              TextField(
                controller: stockController,
                decoration: InputDecoration(labelText: 'Stock'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  products[index] = {
                    'name': nameController.text,
                    'price': priceController.text,
                    'stock': stockController.text,
                  };
                  _saveProducts();
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
        centerTitle: true,
        backgroundColor: Colors.indigo,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return Card(
            margin: EdgeInsets.symmetric(vertical: 8),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 5,
            child: ListTile(
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              title: Text(
                product['name'],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                  'Price: ${product['price']}\nStock: ${product['stock']}'),
              trailing: Icon(Icons.arrow_forward_ios, color: Colors.indigo),
              onTap: () {
                _editProduct(index);
              },
            ),
          );
        },
      ),
    );
  }
}
