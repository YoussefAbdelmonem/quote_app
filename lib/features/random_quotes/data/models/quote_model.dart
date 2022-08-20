import 'package:quotes/features/random_quotes/domain/entities/quote.dart';

class QuoteModel extends Quote
{
  const QuoteModel(
  {
    required String author,
    required  String content,
    required  String perLink,
    required  int id,
}) : super(author: author,content: content ,id:  id , perLink: perLink);


  factory QuoteModel.fromJson(Map<String, dynamic> json) => QuoteModel(
    author: json["author"],
    content: json["quote"],
    perLink: json["permalink"],
    id: json["id"],

  );

  Map<String,dynamic> toJson ()=>
      {
      "author":author,
      "quote":content,
      "permalink":perLink,
      "id":id,
      };

}