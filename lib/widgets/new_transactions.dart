import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  Function addNewTransaction;

  NewTransaction(this.addNewTransaction);

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final amountController = TextEditingController();

    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(5),
        child: Column(children: <Widget>[
          TextField(
            decoration: InputDecoration(labelText: 'Title'),
            controller: titleController,
          ),
          TextField(
            decoration: InputDecoration(labelText: 'Amount'),
            controller: amountController,
          ),
          TextButton(
            onPressed: () {addNewTransaction(
                titleController.text,
                double.parse(amountController.text)
          );
        },
            child: Text(
                'Add Transaction'
            ),
          )
        ],
        ),
      ),
    );
  }
}
