import 'package:flutter/material.dart';
import 'package:secondproject/other_screens/books.dart';

class BookDetail extends StatelessWidget {
  final BookModel model;
  const BookDetail({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(model.title),
      ),
    );
  }
}
