import 'package:flutter/material.dart';
import 'package:food_application/screens/widgets/count.dart';

class SingleProduct extends StatelessWidget {
  final String productImage;
  final String productName;
  final int productPrice;
  final Function onTap;
  SingleProduct({
    required this.productImage,
    required this.productName,
    required this.productPrice,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 250.0,
      width: 150,
      decoration: BoxDecoration(
        color: Color(0xFFE3E4E3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              onTap();
            },
            child: Container(
              height: 150,
              padding: EdgeInsets.all(5),
              width: double.infinity,
              child: Image.network(productImage),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  productName,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Text(
                  '$productPrice\$/gram',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 5),
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Row(
                        children: [
                          Text(
                            '50 Gram',
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Count()
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
