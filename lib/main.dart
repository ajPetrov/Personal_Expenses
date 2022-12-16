import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Transaction> transaction = [
      Transaction(id: 't1', title: 'Shoes', amount: 69.99, date: DateTime.now(),),
      Transaction(id: 't2', title: 'Haircut', amount: 69.99, date: DateTime.now(),),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('CHART'),
              elevation: 5,
            ),
          ),
          Column( children: transaction.map((tx) => Card(
            child: Text(tx.title),
          )).toList(),
          )
        ],
      ),
    );
  }
}