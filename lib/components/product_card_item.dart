import 'package:flutter/material.dart';

import '../model/product.dart';

class ProductCard extends StatelessWidget {
  final Product product;
  const ProductCard({
    Key? key, required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.cyan),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(product.urlImage),
          Text(product.title),
          Text(product.subTitle),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border:
                        Border.all(width: 1, color: Colors.black)),
                    child: Text("50 gram"),
                  )),
              SizedBox(
                width: 40,
              ),
              Flexible(
                  flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(4),
                        border:
                        Border.all(width: 1, color: Colors.black)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.minimize,
                              size: 14,
                            )),
                        Text(
                          "1",
                          style: TextStyle(fontSize: 14),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.add,
                              size: 10,
                            )),
                      ],
                    ),
                  ))
            ],
          )
        ],
      ),
    );
  }
}