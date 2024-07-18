import 'package:flutter/material.dart';
import 'package:flutter_list_views/screens/myListViewBuilder.dart';
import 'package:flutter_list_views/screens/myListview.dart';
import 'package:flutter_list_views/screens/myListviewSeparator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyListView(),
      // routes: context,
    );
  }
}
