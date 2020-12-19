import 'package:flutter/material.dart';
import 'package:food_app_ui/custom_buttom_nav_bar.dart';
import 'package:food_app_ui/food_card.dart';
import 'package:food_app_ui/food_card_row.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    IconData menuIcon = IconData(0xe900, fontFamily: "custom_icons");
    return Scaffold(
      bottomNavigationBar: CustomBottomNavBar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(menuIcon, size: 30),
                  Spacer(),
                  Icon(Icons.search, size: 30),
                ],
              ),
              SizedBox(height: 25),
              Text(
                "Delicious Salads",
                style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 7),
              Text(
                "we made healty and delicious food",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[800],
                ),
              ),
              SizedBox(height: 30),
              Row(
                children: [
                  buildButton("salads", 1),
                  buildButton("soups", 2),
                  buildButton("grilled", 3),
                  Spacer(),
                  IconButton(icon: Icon(Icons.tune), onPressed: () {})
                ],
              ),
              SizedBox(height: 50),
              FoodCardRow(
                title: "Chicken Slalad",
                discription: "Chicken salad with avacado",
                image: '1',
                price: '\$30',
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FoodCard(
                    title: "Mixed Salad",
                    discription: "Mixed Salad",
                    price: '\$40',
                    image: '2',
                  ),
                  SizedBox(width: 30),
                  FoodCard(
                    title: "Quinoa Salad",
                    discription: "Mixed Salad",
                    price: '\$40',
                    image: '4',
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildButton(title, index) {
    return Container(
      height: 50,
      margin: EdgeInsets.only(right: 20),
      width: 100,
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        onPressed: () {},
        color: index == 1 ? Colors.black : Colors.grey[300],
        textColor: index == 1 ? Colors.white : Colors.black,
        child: Text(title),
      ),
    );
  }
}
