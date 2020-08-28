import 'package:e_commerce/models/item.dart';
import 'package:e_commerce/raw.dart';
import 'package:e_commerce/screen/cart_page.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Item> _items;

  void _cartPage() {
    var finalItems = _items.where((element) => element.isChecked).toList();

    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => CartPage(
                title: 'Cart',
                items: finalItems,
              )),
    );
  }

  @override
  void initState() {
    super.initState();
    _items = (rawItems.map((e) => Item.fromJson((e)))).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          FlatButton(
              onPressed: () => _cartPage(),
              child: Icon(
                Icons.shopping_basket,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) => CheckboxListTile(
            value: _items[index].isChecked,
            title: Text(_items[index].title),
            subtitle: Text(_items[index].description),
            onChanged: (value) => setState(() {
              _items[index].isChecked = value;
            }),
          ),
        ),
      ),
    );
  }
}
