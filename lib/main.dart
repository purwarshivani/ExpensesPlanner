import './widgets/new_transactionList.dart';
import 'package:flutter/material.dart';
import './model/transcation.dart';
import './widgets/transaction_list.dart';

void main() {
  runApp(MyHomepage());
}

class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
}

class _MyHomepageState extends State<MyHomepage> {
  final List<Transaction> _usertransaction = [
    Transaction(
        id: 't1', title: "Showes", amount: 3000.0, date: DateTime.now()),
    Transaction(
        id: 't2', title: "Clothes New", amount: 3070.0, date: DateTime.now()),
  ];

  void _addTransaction(String title, double amount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        title: title,
        amount: amount,
        date: DateTime.now());

    setState(() {
      _usertransaction.add(newTx);
    });
  }

  void _startAddTransaction(BuildContext cntx) {
    showModalBottomSheet(
      context: cntx,
      builder: (_) {
        return Container(
          child: Text('hello'),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Expensne Planner'),
          actions: [
            IconButton(
                onPressed: () => _startAddTransaction(context),
                icon: Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                color: Colors.red,
                child: Card(
                  color: Colors.amber,
                  child: Text('Chart'),
                  elevation: 10.0,
                ),
              ),
              TransactionList(_usertransaction),
            ],
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () => _startAddTransaction(context),
        ),
      ),
    );
  }
}
