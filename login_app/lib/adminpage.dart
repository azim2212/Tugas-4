import 'package:flutter/material.dart';
import 'data.dart';
import 'detail.dart';
import 'home.dart';


class AdminPage extends StatelessWidget {
  AdminPage({this.username});
  final String username;

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toko Buku',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
        platform: TargetPlatform.iOS,
      ),
      home: Home(),
      onGenerateRoute: (settings) => generateRoute(settings),
    );
  }

  generateRoute(RouteSettings settings) {
    final path = settings.name.split('/');
    final title = path[1];

    Book book = books.firstWhere((it) => it.title == title);
    return MaterialPageRoute(
      settings: settings,
      builder: (context) => Detail(book),
    );
  }

}
