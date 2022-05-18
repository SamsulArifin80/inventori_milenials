import 'package:flutter/material.dart';
import 'repository/data_repository.dart';
import 'transaction/editProduct.dart';
import 'models/products.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  final DataRepository repository = new DataRepository();

  ProductCard({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: InkWell(
      child: Row(
        children: <Widget>[
          Image.network(
            "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/7c2fff38-9f89-40f1-bbcf-ffbfaab5adbc/wio-8-road-running-shoes-S6jPM3.png",
            width: 100,
            height: 100,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name,
                    style: TextStyle(fontWeight: FontWeight.bold)),
                Text(product.productId),
                Text("Stock :" + product.stock.toString()),
              ],
            ),
          ),
          IconButton(
            icon: Image(image: AssetImage('assets/images/growth.png')),
            onPressed: () {
              repository.deleteProduct(product);
            },
          ),
        ],
      ),
      onTap: () => Navigator.push<Widget>(
        context,
        MaterialPageRoute(
          builder: (context) => editProduct(
            product: product,
          ),
        ),
      ),
    ));
  }
}
