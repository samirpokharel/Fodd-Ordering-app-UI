import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String title;
  final String discription;
  final String price;
  final String image;

  const FoodCard({
    Key key,
    this.title,
    this.discription,
    this.price,
    this.image,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 200,
          height: 320,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          top: -5,
          child: Container(
            height: 180,
            width: 180,
            child: Image.asset('assets/$image.png'),
          ),
        ),
        Positioned(
          top: 180,
          child: Column(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                discription,
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "\$ 40",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 9),
              Positioned(
                bottom: 0,
                child: Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 40,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
