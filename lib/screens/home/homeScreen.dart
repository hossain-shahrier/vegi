import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:food_application/config/colors.dart';
import 'package:food_application/screens/home/drawerSide.dart';
import 'package:food_application/screens/home/singleProduct.dart';
import 'package:food_application/screens/product%20overview/productOverview.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildHerbsProduct(context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Herbs Seasonings',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'View all',
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingleProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: 'Fresh Basil',
                        productImage:
                            "http://assets.stickpng.com/thumbs/58bf1e2ae443f41d77c734ab.png",
                      ),
                    ),
                  );
                },
                productName: 'Fresh Basil',
                productImage:
                    'http://assets.stickpng.com/thumbs/58bf1e2ae443f41d77c734ab.png',
              ),
              SingleProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: 'Fresh Mint',
                        productImage:
                            'http://assets.stickpng.com/thumbs/58bf1e5fe443f41d77c734b2.png',
                      ),
                    ),
                  );
                },
                productName: 'Fresh Mint',
                productImage:
                    'http://assets.stickpng.com/thumbs/58bf1e5fe443f41d77c734b2.png',
              ),
              SingleProduct(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: 'Fresh Ginger',
                        productImage:
                            'http://assets.stickpng.com/thumbs/5b4eed1cc051e602a568ce0e.png',
                      ),
                    ),
                  );
                },
                productName: 'Fresh Ginger',
                productImage:
                    'http://assets.stickpng.com/thumbs/5b4eed1cc051e602a568ce0e.png',
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Widget _buildFreshProduct(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Fresh fruits',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Fresh watermelon',
                          productImage:
                              'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a6.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Fresh watermelon',
                  productImage:
                      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c1a6.png',
                ),
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Fresh Mango',
                          productImage:
                              'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c15d.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Fresh Mango',
                  productImage:
                      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c15d.png',
                ),
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Fresh Orange',
                          productImage:
                              'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c170.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Fresh Orange',
                  productImage:
                      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c170.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Root vegetables',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'View all',
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Fennel',
                          productImage:
                              'http://assets.stickpng.com/thumbs/585ea811cb11b227491c353f.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Fennel',
                  productImage:
                      'http://assets.stickpng.com/thumbs/585ea811cb11b227491c353f.png',
                ),
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Garlic',
                          productImage:
                              'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c218.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Garlic',
                  productImage:
                      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c218.png',
                ),
                SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: 'Carrot',
                          productImage:
                              'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c20a.png',
                        ),
                      ),
                    );
                  },
                  productName: 'Carrot',
                  productImage:
                      'http://assets.stickpng.com/thumbs/580b57fcd9996e24bc43c20a.png',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerSide(),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 14,
            backgroundColor: primaryColor,
            child: Icon(
              Icons.search,
              size: 17,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CircleAvatar(
              radius: 14,
              backgroundColor: primaryColor,
              child: Icon(
                Icons.shop_2,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: primaryColor,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          'https://image.shutterstock.com/image-photo/closeup-photo-fresh-washed-eggplant-260nw-1734573875.jpg')),
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                children: [
                  Container(
                    child: Expanded(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 110.0,
                            ),
                            child: Container(
                              height: 50.0,
                              width: 60.0,
                              decoration: BoxDecoration(
                                color: primaryColor,
                                borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50.0),
                                  bottomLeft: Radius.circular(50.0),
                                ),
                              ),
                              child: BorderedText(
                                strokeWidth: 5.0,
                                strokeColor: Colors.green,
                                child: Text(
                                  'Vegi',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          BorderedText(
                            strokeWidth: 5.0,
                            strokeColor: Colors.green,
                            child: Text(
                              '30% Off',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text(
                              'On all vegetable products',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
          ),
          _buildHerbsProduct(context),
          _buildFreshProduct(context),
          _buildRootProduct(context),
        ],
      ),
    );
  }
}
