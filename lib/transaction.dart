import 'package:flutter/foundation.dart';

class Transaction {
  final String id; //id of the spending
  final String title; // the reason for spending
  final double amount; //amount of money that spending
  final DateTime date; // the day spending money

  Transaction(
      {required this.id,
      required this.title,
      required this.amount,
      required this.date}); /*add name argument*/
}
