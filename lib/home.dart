import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Inventori', home: Main());
  }
}

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Home'),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.home),
        ),
      ),
      //body: Center(
      //child: Text('Halaman Home')
      //),
      body: Padding(
        padding: const EdgeInsets.only(top: 8, left: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text('Welcome',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Google Name',
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('Product IN',
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                      Text('10',
                          style: const TextStyle(
                            fontSize: 50,
                          )),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_downward,
                  size: 40,
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Text('Product OUT',
                          style: const TextStyle(
                            fontSize: 20,
                          )),
                      Text('4',
                          style: const TextStyle(
                            fontSize: 50,
                          )),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_upward,
                  size: 40,
                ),
              ],
            ),
            Text('Low Stock',
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            Text('Stock Warning',
                style:
                    const TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.asset("assets/images/shoes1-small.jpg",
                        width: 80, height: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand New Shoes',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text('SH-231',
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      //color: Color.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.asset("assets/images/shoes1-small.jpg",
                        width: 80, height: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand New Shoes',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text('SH-231',
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      //color: Color.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Row(
              children: <Widget>[
                Card(
                  elevation: 2,
                  child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    child: Image.asset("assets/images/shoes1-small.jpg",
                        width: 80, height: 80),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text('Brand New Shoes',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                    Text('SH-231',
                        style: const TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold)),
                    RaisedButton(
                      child: Text('Stok 1'),
                      //color: Color.red,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.0))),
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RaisedButton.icon(
                //color: Color.blue,
                label: Text('Neew Transaction'),
                icon: Icon(Icons.arrow_downward),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(16.0))),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
