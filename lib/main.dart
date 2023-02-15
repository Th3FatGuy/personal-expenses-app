import 'package:flutter/material.dart';

import './transaction.dart'; //create a transaction file with the constructor of transaction

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transaction = [
    Transaction(
      id: '16035',
      title: 'New Lenovo tab',
      amount: 3000000,
      date: DateTime.now(),
    ),
    Transaction(
      id: '16036',
      title: 'New Keyboard',
      amount: 120000,
      date: DateTime.now(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                child: Text('Chart'),
                elevation: 5,
              ),
            ),
            Column(
              children: transaction.map((tx) {
                return Card(
                  child: Row(children: [
                    //create a row that to display the amount
                    Container(
                      child: Text(tx.amount.toString()),
                    ),
                    Column(
                      children: [
                        Text(tx.title),
                        Text(tx.date.toString()),
                      ],
                    )
                  ]),
                );
              }).toList(),
            ),
          ]),
    );
  }
}
