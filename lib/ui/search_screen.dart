import 'package:flutter/material.dart';
import 'package:food_app/components/search_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Search"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Items"),
              SizedBox(height: 16,),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none
                  ),
                  fillColor: Color(0xffc2c2c2),
                  filled: true,
                  hintText: "Search for items in the store",
                  suffixIcon: Icon(Icons.search)
                ),
              ),
              SizedBox(height: 16,),
              Expanded(
                  child:SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                        SearchItem(),
                      ],
                    ),
                  ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

