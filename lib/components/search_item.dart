import 'package:flutter/material.dart';
class SearchItem extends StatelessWidget {
  const SearchItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPm72u2K9SEsc6D9GV7cGYYI454iVHHzbXDQ&usqp=CAU",fit: BoxFit.cover,),
          ),
          Column(
            children: [
              Text("productName",style: TextStyle(fontWeight: FontWeight.bold),),
              SizedBox(height: 10,),
              Text("50\$/50gram"),
              SizedBox(height: 10,),
              Container (
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border:Border.all(width: 1,color: Colors.grey),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text("50 Gram"),
                    Icon(Icons.add_outlined),
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              border:Border.all(width: 1,color: Colors.grey),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add),
                Text("ADD")
              ],
            ),
          ),
        ],
      ),
    );
  }
}
