import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:food_application/models/productModel.dart';

class ProductProvider with ChangeNotifier {
  List<ProductModel> herbProductList = [];
  List<ProductModel> freshProductList = [];
  List<ProductModel> rootProductList = [];
  late ProductModel productModel;

  productmodel(QueryDocumentSnapshot elements) {
    productModel = ProductModel(
      productImage: elements.get("productImage"),
      productName: elements.get("productName"),
      productPrice: elements.get("productPrice"),
    );
  }

  // Herb Product
  fetchHarbsProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("HerbsProduct").get();
    value.docs.forEach((element) {
      productmodel(element);
      newList.add(productModel);
    });
    herbProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getHerbsProductDataList {
    return herbProductList;
  }

// Fresh Fruit product
  fetchFreshProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("FreshProduct").get();
    value.docs.forEach((element) {
      productmodel(element);
      newList.add(productModel);
    });
    freshProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getFreshProductDataList {
    return freshProductList;
  }

// Root Product
  fetchRootProductData() async {
    List<ProductModel> newList = [];
    QuerySnapshot value =
        await FirebaseFirestore.instance.collection("RootProducts").get();
    value.docs.forEach((element) {
      productmodel(element);
      newList.add(productModel);
    });
    rootProductList = newList;
    notifyListeners();
  }

  List<ProductModel> get getRootProductDataList {
    return rootProductList;
  }
}
