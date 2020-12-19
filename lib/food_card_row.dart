import 'package:flutter/material.dart';

class FoodCardRow extends StatelessWidget {
  final String image;
  final String title;
  final String discription;
  final String price;

  const FoodCardRow({
    Key key,
    this.image,
    this.title,
    this.discription,
    this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 200,
            width: 200,
            child: Image.asset('assets/$image.png'),
          ),
        ),
        Positioned(
          right: 10,
          top: 50,
          child: Container(
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 7),
                    Text(
                      discription,
                      style: TextStyle(fontSize: 18, color: Colors.grey),
                    ),
                    SizedBox(height: 10),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 35,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(width: 20),
                Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 30,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
