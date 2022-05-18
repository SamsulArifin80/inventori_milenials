import 'package:flutter/material.dart';
import 'package:inventori/models/products.dart';
import 'package:inventori/repository/data_repository.dart';

// void main() {
//   runApp(HomePage());
// }

class editProduct extends StatelessWidget {
  final inputProductId = TextEditingController();
  final inputProductName = TextEditingController();
  final inputPrice = TextEditingController();
  final inputStock = TextEditingController();
  final inputDescription = TextEditingController();
  final DataRepository repository = DataRepository();
  final Product product;

  editProduct({Key? key, required this.product}) : super(key: key);
  @override
  build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Edit Product'),
            leading: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                }),
            centerTitle: true,
          ),
          body: Padding(
              padding: const EdgeInsets.only(top: 20, left: 8),
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Container(
                    margin: EdgeInsets.all(5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Product Information',
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                  width: 1.0, color: Color(0xFFFF000000)),
                            ),
                          ),
                        ),
                        Text('Product Image',
                            style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(top: 10, bottom: 20),
                          height: 200,
                          child: Center(
                            child:
                                Icon(Icons.add, size: 50, color: Colors.blue),
                          ),
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            border: Border.all(width: 5, color: Colors.blue),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Text('Product Name',
                            style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: inputProductName..text = product.name,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Adidas, Nike, Balenciaga",
                            ),
                          ),
                        ),
                        Text('Product ID',
                            style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: inputProductId
                              ..text = product.productId,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "SH-101",
                            ),
                          ),
                        ),
                        Text('Price', style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: inputPrice
                              ..text = product.price.toString(),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "1000000",
                            ),
                          ),
                        ),
                        Text('Stock', style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: inputStock
                              ..text = product.stock.toString(),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "10",
                            ),
                          ),
                        ),
                        Text('Description',
                            style: const TextStyle(fontSize: 15)),
                        Container(
                          margin: EdgeInsets.only(bottom: 20),
                          child: TextField(
                            controller: inputDescription
                              ..text = product.description,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Enter a description ...",
                            ),
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 50,
                            child: ElevatedButton(
                              style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(18.0),
                                          side:
                                              BorderSide(color: Colors.red)))),
                              onPressed: () {
                                Navigator.of(context).pop();
                                product.name = inputProductName.text;
                                product.price = double.parse(inputPrice.text);
                                product.stock = int.parse(inputStock.text);
                                product.description = inputDescription.text;
                                product.productId = inputProductId.text;

                                repository.updateProduct(product);
                              },
                              child: Text("Update Product"),
                            )),
                      ],
                    ),
                  )))),
    );
  }
}
