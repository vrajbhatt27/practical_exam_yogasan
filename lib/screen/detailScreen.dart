import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final name;
  final url;
  final detail;

  DetailScreen(this.name, this.url, this.detail);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        children: [
          Image.network(url),
          Card(
            elevation: 5,
						child: Text(detail),
          )
        ],
      ),
    );
  }
}
