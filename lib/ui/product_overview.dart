import 'package:flutter/material.dart';
import 'package:food_app/model/product.dart';
class ProductOverviewScreen extends StatefulWidget {
  final Product product;
  const ProductOverviewScreen({Key? key, required this.product}) : super(key: key);

  @override
  State<ProductOverviewScreen> createState() => _ProductOverviewScreenState();
}

class _ProductOverviewScreenState extends State<ProductOverviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(title: Text("Product Overview"),),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10,horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product.title),
                Text("\$ ${widget.product.price}"),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: Image.network(widget.product.urlImage,fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$ ${widget.product.price}"),
                ElevatedButton(onPressed: (){}, child: Text("Add")),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.product.subTitle),
                Text("About product"),
              ],
            ),
            SizedBox(height: 30,),
            Row(
              children: [
                Expanded(child:  ElevatedButton(onPressed: (){}, child: Text("Add to wishlist"),),),
                Expanded(child:  ElevatedButton(onPressed: (){}, child: Text("Go to card"),),),
              ],
            )
          ],
        ),
      ),
    );
  }
}
