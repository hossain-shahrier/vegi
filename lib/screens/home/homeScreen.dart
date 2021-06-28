import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  Widget singleProducts() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 230.0,
      width: 160,
      decoration: BoxDecoration(
        color: Color(0xFFE3E4E3),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Image.network(
                'https://www.wiffens.com/content/uploads/basil.png'),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Fresh Basil',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '50\$/gram',
                    style: TextStyle(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.only(left: 5),
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  '50 Gram',
                                  style: TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_drop_down,
                                color: Colors.yellow,
                                size: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.remove,
                                size: 15,
                                color: Color(0xffd0b84c),
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                    color: Color(0xffd0b84c),
                                    fontWeight: FontWeight.bold),
                              ),
                              Icon(
                                Icons.add,
                                size: 15,
                                color: Color(0xffd0b84c),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget listTile({required IconData icon, required String title}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.black45),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEEEDED),
      drawer: Drawer(
        child: Container(
          color: Color(0xffd1ad17),
          child: ListView(
            children: [
              DrawerHeader(
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white54,
                      radius: 44,
                      child: CircleAvatar(
                        radius: 40,
                        backgroundColor: Colors.yellow,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Welcome Guest'),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                          height: 30,
                          child: MaterialButton(
                            onPressed: () {},
                            child: Text('Login'),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                              side: BorderSide(width: 2),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              listTile(icon: Icons.home_outlined, title: "Home"),
              listTile(icon: Icons.shop_outlined, title: "Review Cart"),
              listTile(icon: Icons.person_outline, title: "My Profile"),
              listTile(
                  icon: Icons.notifications_outlined, title: "Notification"),
              listTile(icon: Icons.star_outline, title: "Rating & Review"),
              listTile(icon: Icons.favorite_outline, title: "Wishlist"),
              listTile(icon: Icons.copy_outlined, title: "Raise a complain"),
              listTile(icon: Icons.question_answer_outlined, title: "FAQs"),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 350,
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    Text(
                      'Contact Support',
                      style: TextStyle(color: Colors.black),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Text(
                          "Call us:",
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "+8801718295833",
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Text(
                            "Email us:",
                            style: TextStyle(color: Colors.black),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "hossainshahrier.shm@gmail.com",
                            style: TextStyle(color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: [
          CircleAvatar(
            radius: 14,
            backgroundColor: Color(0xffd4d181),
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
              backgroundColor: Color(0xffd4d181),
              child: Icon(
                Icons.shop_2,
                size: 17,
                color: Colors.black,
              ),
            ),
          ),
        ],
        backgroundColor: Color(0xffd6b738),
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
                  Expanded(
                      child: Container(
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
                              color: Color(0xffd6b738),
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
                  )),
                  Expanded(child: Container()),
                ],
              ),
            ),
          ),
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
                  singleProducts(),
                  singleProducts(),
                  singleProducts()
                ],
              ),
            ),
          ),
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
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                  singleProducts(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
