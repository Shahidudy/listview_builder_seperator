import 'package:flutter/material.dart';
import 'package:flutter_list_views/screens/myListViewBuilder.dart';

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LISTVIEW'),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.green,
              child: Center(child: Text('FIRST ITEM')),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Center(child: Text('SECOND ITEM')),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.blue,
              child: Center(child: Text('3rd ITEM')),
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
              child: Center(child: Text('4th ITEM')),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyListViewbuilder();
                    },
                  ),
                );
              },
              child: Container(
                height: 28,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(20)),
                child: Center(child: Text('GO TO LISTVIEW BUILDER')),
              ),
            )
          ],
        ),
      ),
    );
  }
}
