import 'package:flutter/material.dart';
import 'package:food_app/components/drawer_common.dart';
import 'package:food_app/components/product_card_item.dart';
import 'package:food_app/core/route/routes.dart';
import 'package:food_app/model/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      drawer: const DrawerCommon(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Home"),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Routes.searchScreen);
          }, icon: Icon(Icons.search))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://media.istockphoto.com/photos/cooking-nd-seasoning-spices-border-on-black-slate-background-picture-id953140058?k=20&m=953140058&s=170667a&w=0&h=q-LPd-NGp841dH3G0uim3uLl6pxodzwkybpuUm4dZEM="),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  Container(
                    width: 120,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(90),
                        bottomRight: Radius.circular(90),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        "Vegi",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 80, horizontal: 40),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "30% off",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              color: Colors.tealAccent),
                        ),
                        Text(
                          "On all vegetable product",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                              color: Colors.white),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Herb Seasonings"),
                  Text("View all"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.productOverviewScreen,
                            arguments: products[index]);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: products.length,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Fresh Fruits"),
                  Text("View all"),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 350,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: products[index],
                      onTap: () {
                        Navigator.pushNamed(
                            context, Routes.productOverviewScreen,
                            arguments: products[index]);
                      },
                    );
                  },
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      width: 20,
                    );
                  },
                  itemCount: products.length,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
