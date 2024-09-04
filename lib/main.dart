import 'package:first_app/day_10/data/model/product_model.dart';
import 'package:first_app/day_10/data/model/product_model_impl.dart';
import 'package:first_app/day_10/screen/product.dart';
import 'package:first_app/ninja/ninja_item_view/quote_card.dart';
import 'package:flutter/material.dart';
import 'ninja/Models/quote.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
  ProductModel _productModel = ProductModelImpl();
  _productModel.getProduct().then((value) {
    print("value=====>$value");
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //ninja_card
      //home: NinjaCard(),

      //Day 2
      //home: Container1(),

      //Day 4
      //home: PaddingSizeBoxRowColumn(),

      //Day 5
      //home: ImageWidget(),

      //Day 6
      //home: TheMovieDB()

      //Day 10
      home: Product(),
    );
  }
}

class QuotesList extends StatefulWidget {
  const QuotesList({super.key});

  @override
  State<QuotesList> createState() => _QuotesListState();
}

class _QuotesListState extends State<QuotesList> {
  List<Quote> quotes = [
    Quote(
        text: 'Be yourself; everyone else is already taken',
        author: 'oscar wilder'),
    Quote(
        text: 'I have nothing to declare except my genius',
        author: 'oscar wilder'),
    Quote(
        text: 'The truth is rarely pure nad never simple',
        author: 'oscar wilder')
  ];

  // Widget quoteTemplate(quote) {
  //   return new QuoteCard(
  //     quote: quote,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text('Awesome Quotes'),
        backgroundColor: Colors.redAccent,
        centerTitle: true,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
