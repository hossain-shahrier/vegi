import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:food_application/config/colors.dart';
import 'package:food_application/providers/productProvider.dart';
import 'package:food_application/screens/home/drawerSide.dart';
import 'package:food_application/screens/home/singleProduct.dart';
import 'package:food_application/screens/product%20overview/productOverview.dart';
import 'package:food_application/screens/search/search.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ProductProvider productProvider;

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
            children: productProvider.getHerbsProductDataList.map(
              (herbsProductData) {
                return SingleProduct(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ProductOverview(
                          productName: herbsProductData.productName,
                          productImage: herbsProductData.productImage,
                          productPrice: herbsProductData.productPrice,
                        ),
                      ),
                    );
                  },
                  productName: herbsProductData.productName,
                  productImage: herbsProductData.productImage,
                  productPrice: herbsProductData.productPrice,
                );
              },
            ).toList(),
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
              children: productProvider.getFreshProductDataList.map(
                (freshProductData) {
                  return SingleProduct(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: freshProductData.productName,
                            productImage: freshProductData.productImage,
                            productPrice: freshProductData.productPrice,
                          ),
                        ),
                      );
                    },
                    productName: freshProductData.productName,
                    productImage: freshProductData.productImage,
                    productPrice: freshProductData.productPrice,
                  );
                },
              ).toList(),
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
              children: productProvider.getRootProductDataList.map(
                (freshProductData) {
                  return SingleProduct(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductOverview(
                            productName: freshProductData.productName,
                            productImage: freshProductData.productImage,
                            productPrice: freshProductData.productPrice,
                          ),
                        ),
                      );
                    },
                    productName: freshProductData.productName,
                    productImage: freshProductData.productImage,
                    productPrice: freshProductData.productPrice,
                  );
                },
              ).toList(),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.fetchHarbsProductData();
    productProvider.fetchFreshProductData();
    productProvider.fetchRootProductData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    productProvider = Provider.of(
      context,
    );
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
            child: IconButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ),
                );
              },
              icon: Icon(
                Icons.search,
                size: 17,
                color: Colors.black,
              ),
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
                        'https://image.shutterstock.com/image-photo/closeup-photo-fresh-washed-eggplant-260nw-1734573875.jpg'),
                  ),
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
