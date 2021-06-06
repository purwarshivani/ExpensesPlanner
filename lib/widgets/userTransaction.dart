// import 'package:flutter/material.dart';
// import 'transaction_list.dart';
// import 'new_transactionList.dart';
// import '../model/transcation.dart';

// class UserTransaction extends StatefulWidget {
//   const UserTransaction({Key key}) : super(key: key);

//   @override
//   _UserTransactionState createState() => _UserTransactionState();
// }

// class _UserTransactionState extends State<UserTransaction> {
//   final List<Transaction> _usertransaction = [
//     Transaction(
//         id: 't1', title: "Showes", amount: 3000.0, date: DateTime.now()),
//     Transaction(
//         id: 't2', title: "Clothes New", amount: 3070.0, date: DateTime.now()),
//   ];

//   void _addTransaction(String title, double amount) {
//     final newTx = Transaction(
//         id: DateTime.now().toString(),
//         title: title,
//         amount: amount,
//         date: DateTime.now());

//     setState(() {
//       _usertransaction.add(newTx);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         NewTrancation(_addTransaction),
//         TransactionList(_usertransaction),
//       ],
//     );
//   }
// }
