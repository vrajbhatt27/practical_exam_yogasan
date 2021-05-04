import 'package:flutter/material.dart';
import '../data.dart';
import './detailScreen.dart';


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fruits App'),
      ),
      body: Column(
          children: data.map((e) {
        String url = e['url'];
        return InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (ctx) => DetailScreen(e['name'], url, e['detail']),
              ),
            );
          },
          child: Card(
            elevation: 5,
            child: Stack(
              children: [
                Image.network(url),
                Text(
                  e['name'],
                  style: TextStyle(fontSize: 30, color: Colors.black),
                ),
              ],
            ),
          ),
        );
      }).toList()),
    );
  }
}
