import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
  home: QuotesList(),
));

class QuotesList extends StatefulWidget {
  const QuotesList({Key? key}) : super(key: key);

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {

  List<Quote> quotes = [
    Quote(author: 'twoface', text:'You live long enough to see yourself the villain'),
    Quote(author: 'Thanos', text:'Where did that bring you? Back to me.'),
    Quote(author: 'Cato', text:'Carthago delenda est'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote:quote,
          delete:(){
            setState((){
              quotes.remove(quote);
            });
          },
        )).toList(),
      ),
    );
  }
}

