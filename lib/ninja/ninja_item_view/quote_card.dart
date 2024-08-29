import 'package:first_app/ninja/Models/quote.dart';
import 'package:flutter/material.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  final Function delete;
  void _delete() {
    delete;
  }

  QuoteCard({super.key, required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
      color: Colors.amber[200],
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            const SizedBox(
              height: 6.0,
            ),
            Text(
              quote.author,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[800]),
            ),
            const SizedBox(
              height: 6.0,
            ),
            TextButton.icon(
              onPressed: _delete,
              label: const Text('delete quote'),
              icon: const Icon(Icons.delete),
            )
          ],
        ),
      ),
    );
  }
}
