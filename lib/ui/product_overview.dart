import 'package:flutter/material.dart';
class ProductOverviewScreen extends StatefulWidget {
  const ProductOverviewScreen({Key? key}) : super(key: key);

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
                Text("Fresh Basil"),
                Text("\$50"),
              ],
            ),
            SizedBox(height: 10,),
            SizedBox(
              width: double.infinity,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPm72u2K9SEsc6D9GV7cGYYI454iVHHzbXDQ&usqp=CAU",fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("\$50"),
                ElevatedButton(onPressed: (){}, child: Text("Add")),
              ],
            ),
            SizedBox(height: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("About product"),
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
