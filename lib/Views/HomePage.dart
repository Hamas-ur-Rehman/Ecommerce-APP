import 'package:ecomo/Pages/cart.dart';
import 'package:ecomo/components/Products.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../StylesClass.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ecomo",
        ),
        backgroundColor: Colors.redAccent[400],
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              }),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("hamas"),
              accountEmail: Text("hamasurrehman@gmail.com"),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.redAccent[400]),
            ),
            //body of drawer
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Home"),
                leading: Icon(
                  Icons.home,
                  color: Colors.redAccent[400],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Account"),
                leading: Icon(
                  Icons.person,
                  color: Colors.redAccent[400],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("My Orders"),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Colors.redAccent[400],
                ),
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Cart()));
              },
              child: ListTile(
                title: Text("Shopping Cart"),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Colors.redAccent[400],
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Favorites"),
                leading: Icon(
                  Icons.favorite,
                  color: Colors.redAccent[400],
                ),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("Settings"),
                leading: Icon(
                  Icons.settings,
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text("About"),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: ListView(children: [
        imageCarousel,
        Container(
          child: Column(
            children: [
//this part shows the Suggestion Cards under the title
              SuggesstionCards(),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Recent Products",
              style: TextStyle(
                fontSize: 15,
              )),
        ),
        // gridview
        Container(
          height: 320,
          child: Products(),
        )
      ]),
    );
  }
}

class SuggesstionCards extends StatelessWidget {
  const SuggesstionCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(top: 18.0),
        child: Row(
          children: [
            GestureDetector(
              onTap: () {},
              child: card('Food'.tr,
                  'https://cdn3.iconfinder.com/data/icons/unigrid-flat-food/90/006_142_grocery_food_gastronomy_bag-512.png'),
            ),
            card('Clothes'.tr,
                'https://cdn1.iconfinder.com/data/icons/clothes-and-outfit-vol-1-1/128/coat_suit_winter_clothes_outfit_fashion_jacket-256.png'),
            card('Decor'.tr,
                'https://cdn0.iconfinder.com/data/icons/love-story-filled-outline-1/512/bouquet_flower_rose_decoration_beautiful_floral_blossom_romantic-256.png'),
            card('Cars'.tr,
                'https://cdn0.iconfinder.com/data/icons/kameleon-free-pack-rounded/110/Old-Car-2-256.png'),
            card('Electronics'.tr,
                'https://cdn1.iconfinder.com/data/icons/supermarket-16/64/electronics-washing-machine-256.png'),
          ],
        ),
      ),
    );
  }
}
