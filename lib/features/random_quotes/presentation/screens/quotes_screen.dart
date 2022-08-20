import 'package:flutter/material.dart';
import 'package:quotes/features/random_quotes/presentation/widgets/quote_content.dart';


class QuotesScreen extends StatelessWidget {
  const QuotesScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Quotes'),
      ),
      body: Column(
        children:  const [

          QuoteContent(),



        ],
      ),
    );
  }
}
