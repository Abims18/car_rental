import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../models/car_data.dart';

Widget carsView(){
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    decoration: BoxDecoration(
        color: AppColors.cardBg,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30))),
    child: Padding(
      padding: const EdgeInsets.all(24.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Top Brands",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "More",
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
          Container(
              height: 130,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: car_logos.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Image.asset(
                        "assets/logo/${car_logos[index]}.png",
                        fit: BoxFit.contain,
                      ));
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Recommended",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "More",
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
          Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: cars.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/cars/${cars[index]}.png",
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10,),
                          Text("${car_names[index]}", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                          Text("${price_list[index]}", style: TextStyle(color: Colors.yellow), textAlign: TextAlign.center,)
                        ],
                      ));
                },
              )),

          //third list

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              Text(
                "More",
                style: TextStyle(color: Colors.yellow),
              ),
            ],
          ),
          Container(
              height: 170,
              width: double.infinity,
              child: ListView.builder(
                padding: EdgeInsets.only(top: 15, right: 15, bottom: 15),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: pop_cars.length,
                itemBuilder: (context, index) {
                  return Container(
                      width: MediaQuery.of(context).size.width/3,
                      padding: EdgeInsets.all(10),
                      margin: EdgeInsets.only(right: 10),
                      decoration: BoxDecoration(
                          color: Colors.black26,
                          borderRadius: BorderRadius.circular(30)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/cars/${pop_cars[index]}.png",
                            fit: BoxFit.contain,
                          ),
                          SizedBox(height: 10,),
                          Text("${pop_names[index]}", style: TextStyle(color: Colors.white), textAlign: TextAlign.center,),
                          Text("${pop_price[index]}", style: TextStyle(color: Colors.yellow), textAlign: TextAlign.center,)
                        ],
                      ));
                },
              )),
        ],
      ),
    ),
  );
}
