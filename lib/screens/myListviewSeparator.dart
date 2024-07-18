import 'package:flutter/material.dart';

class MyListViewSeparator extends StatelessWidget {
  const MyListViewSeparator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LIST VIEW SEPARATOR'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 200,
                color: Colors.red,
                child: Center(child: Text('ITEM $index')),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(
                height: 10,
              );
            },
            itemCount: 10),
      ),
    );
  }
}
