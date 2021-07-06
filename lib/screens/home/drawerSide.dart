import 'package:flutter/material.dart';

class DrawerSide extends StatelessWidget {
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
    return Drawer(
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
                      backgroundImage: NetworkImage(
                          'https://scontent.fcgp7-1.fna.fbcdn.net/v/t1.6435-9/180550422_1411200889220127_5459255728639485935_n.jpg?_nc_cat=103&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=0KZn3ytHH8EAX9ggaPI&_nc_ht=scontent.fcgp7-1.fna&oh=b1003fff77bbdabc25b31cf3348ac616&oe=60E8DC18'),
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
            listTile(icon: Icons.notifications_outlined, title: "Notification"),
            listTile(icon: Icons.star_outline, title: "Rating & Review"),
            listTile(icon: Icons.favorite_outline, title: "Wishlist"),
            listTile(icon: Icons.copy_outlined, title: "Raise a complain"),
            listTile(icon: Icons.question_answer_outlined, title: "FAQs"),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
