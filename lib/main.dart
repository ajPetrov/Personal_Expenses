import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/transaction.dart';
import 'package:intl/intl.dart';

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
      Transaction(
        id: 't1',
        title: 'Shoes',
        amount: 69.99,
        date: DateTime.now(),
      ),
      Transaction(
        id: 't2',
        title: 'Haircut',
        amount: 15.00,
        date: DateTime.now(),
      ),
    ];
    String titleInput;
    String amountInput;

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
          Card(
            elevation: 5,
            child: Container(
              padding: EdgeInsets.all(5),
              child: Column(children: <Widget>[
                TextField(
                  decoration: InputDecoration(labelText: 'Title'),
                  onChanged: (val) => titleInput = val,
                ),
                TextField(
                  decoration: InputDecoration(labelText: 'Amount'),
                  onChanged: (val) => amountInput = val,
                ),
                TextButton(
                    onPressed: null,
                    child: Text(
                        'Add Transaction'
                    ),
                )
              ],
              ),
            ),
          ),
          Column(
            children: transaction
                .map((tx) => Card(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 10, horizontal: 15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.purple, width: 2)),
                            padding: EdgeInsets.all(10),
                            child: Text(
                              '\$${tx.amount}',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Colors.purple),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                tx.title,
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                              Text(
                                DateFormat.yMMMd().format(tx.date),
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
