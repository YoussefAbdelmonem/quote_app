import 'package:flutter/material.dart';

class QuoteContent extends StatelessWidget {
  const QuoteContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        height: MediaQuery.of(context).size.height/3,
        width: MediaQuery.of(context).size.width/1.2,
        margin: const EdgeInsets.all(20),
        padding: EdgeInsets.all(15),

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: Colors.blue[800],




        ),
        child: Column(
          children:  [
            Text('Don’t compare yourself with anyone in this world… if you do so, you are insulting yourself.',
              textAlign: TextAlign.center,
            ),

            Container( margin: EdgeInsets.symmetric(vertical: 20),
                child: Text('Bill Gates')),

          ],
        ),
      ),
    );
  }
}
