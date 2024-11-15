import 'package:flutter/material.dart';
import 'core/navigation/navigation_service.dart';
import 'presentation/pages/base_page.dart';

final NavigationService navigationService = NavigationService();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigationService.navigatorKey,
      title: 'E-Distribusi Agent',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        hintColor: Colors.amber,
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.grey[800]),
        ),
      ),
      home: BasePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
