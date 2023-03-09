import 'package:flutter/material.dart';
import 'package:personal_expenses_app/widget/new_transaction.dart';

import './widget/user_transaction.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Personal Expenses App',
      home: MyHomePage(),
    );
  }
} //creating app title

class MyHomePage extends StatelessWidget {
  // late String titleInput;
  // late String amountInput;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  //creating fake date for the app

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter App'),
      ), //app title
      body:
          //SingleChildScrollView(
          //let the all page scrollable, it need to know the height so it can scroll on that.
          Column(
        //create body page
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              color: Colors.blue,
              child: Text('Chart'),
              elevation: 5,
            ),
          ),
          UserTransactions(),
        ],
      ),
      //),
    );
  }
}
