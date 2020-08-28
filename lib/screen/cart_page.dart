import 'package:e_commerce/models/item.dart';
import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  CartPage({Key key, this.title, this.items}) : super(key: key);

  final String title;
  final List<Item> items;

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: widget.items.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(widget.items[index].title),
            subtitle: Text(widget.items[index].description),
          ),
        ),
      ),
    );
  }
}
