import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction; //create list of transaction

  TransactionList(this.transaction); //contruction to receive data

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView(
        // returning column of text
        //column in column
        children: transaction.map((tx) {
          return Card(
            child: Row(children: [
              //create a row that to display the amount
              Container(
                margin: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 15,
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.black, width: 2), /*create boder box*/
                ),
                padding: EdgeInsets.all(10),
                child: Text(
                  '${tx.amount.toInt()}VND',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.purple),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tx.title,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    DateFormat('dd-MM-yyyy').format(tx.date),
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              )
            ]),
          );
        }).toList(),
      ),
    );
  }
}
