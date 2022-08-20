import 'package:equatable/equatable.dart';

class Quote extends Equatable {

  final String author;
  final String content;
  final String perLink;
  final int id;

  const Quote(
      {required this.author, required this.content, required this.perLink, required this.id}

      );


  @override
  List<Object?> get props =>[author , content, perLink,id];

}