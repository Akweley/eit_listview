import 'package:eit_listview/basic_list_page.dart';
import 'package:flutter/material.dart';

class BasicListApp extends StatelessWidget {
  const BasicListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BasicListPage(title: 'Flutter Demo Home Page'),
    );
  }
}

