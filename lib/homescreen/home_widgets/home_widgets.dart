import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget topBar(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: EdgeInsets.all(5.0),
        child: CircleAvatar(
          backgroundColor: Colors.white,
          radius: 35,
          child: Icon(Icons.location_pin, color: Colors.yellow, size: 50,),
        ),
      ),
      Column(
        children: [
          Text("Your location", style: TextStyle(color: Colors.grey, fontSize: 20),),
          Text("Chennai, Tamilnadu", style: TextStyle(color: Colors.black, fontSize: 20),),
        ],
      ),
      Padding(
        padding: const EdgeInsets.all(5.0),
        child: CircleAvatar(
          radius: 35,
          child: Image.asset("assets/images/userone.png",),
        ),
      )
    ],

  );
}

Widget searchbar(){
  return Container(
    width: double.infinity,
    padding: EdgeInsets.only(left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Search your dream\ncar and drive", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
        Padding(
          padding: EdgeInsets.only(left: 0, right: 5, top: 10),
          child: TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search, color: Colors.yellow,),
                  hintText: "Search your dream car",
                  suffixIcon: Icon(Icons.filter_list_alt, color: Colors.yellow,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                  )
              )
          ),
        ),
      ],
    ),
  );
}

