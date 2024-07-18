import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_list_views/screens/myListviewSeparator.dart';

class MyListViewbuilder extends StatelessWidget {
  const MyListViewbuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('LIST VIEW BUILDER'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(20)),
                    child: Center(child: Text("Item $index")),
                  ),
                );
              },
            ),
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return MyListViewSeparator();
              }));
            },
            child: Container(
              height: 25,
              width: double.infinity,
              child: Center(child: Text('GO TO LISTVIEW SEPERATOR')),
              decoration: BoxDecoration(
                  color: Colors.red, borderRadius: BorderRadius.circular(20)),
            ),
          )
        ],
      ),
    );
  }
}
