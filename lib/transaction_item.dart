import 'package:flutter/material.dart';
import 'Transaction_model.dart';

class transactionwidget extends StatelessWidget {
  final Transactionmodel transactionmodel;

  const transactionwidget({Key? key, required this.transactionmodel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(transactionmodel.logo),
        title: Text(transactionmodel.name),
        subtitle: Text(transactionmodel.date),
        trailing: Text(
          transactionmodel.amount,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.blue,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
