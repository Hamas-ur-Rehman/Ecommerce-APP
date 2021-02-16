import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsOnTheCart = [
    {
      'name': "Blazer",
      'picture':
          "https://www.powerplanetonline.com/cdnassets/blazer_exclusive_de_lino_gris_00_l.jpg",
      "price": "100",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': "Sweater",
      'picture':
          "https://images4-g.ravelrycache.com/uploads/aspeckles/660344926/D093BD3A-D727-430D-8C11-E170A7593FD6_medium2.jpg",
      "price": "200",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': "Frock",
      'picture':
          "https://5.imimg.com/data5/MC/CA/BJ/SELLER-38931576/kids-red-frock-500x500.jpg",
      "price": "500",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': "Jeans",
      'picture':
          "https://assets.ajio.com/medias/sys_master/root/h24/h60/15507590512670/-473Wx593H-460564121-blue-MODEL.jpg",
      "price": "700",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': "Shalwar Kameez",
      'picture':
          "https://i.pinimg.com/736x/2d/69/af/2d69afc0043503e68723edde3cc1c6dc.jpg",
      "price": "700",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      'name': "Kurta",
      'picture':
          "https://cdn.shopify.com/s/files/1/0247/0828/4509/products/1543229489423-product_683x1024_3679897c-ec09-483d-997e-33af1fec3503_1024x1024.jpeg?v=1580270737",
      "price": "700",
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productsOnTheCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            cart_prod_name: productsOnTheCart[index]['name'],
            cart_prod_color: productsOnTheCart[index]['color'],
            cart_prod_qty: productsOnTheCart[index]['quantity'],
            cart_prod_picture: productsOnTheCart[index]['picture'],
            cart_prod_price: productsOnTheCart[index]['price'],
            cart_prod_size: productsOnTheCart[index]['size'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  const SingleCartProduct(
      {Key key,
      this.cart_prod_name,
      this.cart_prod_picture,
      this.cart_prod_price,
      this.cart_prod_size,
      this.cart_prod_color,
      this.cart_prod_qty})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      // =====================TITLE SECTION ========================
      title: Text(cart_prod_name),
      //========================= LEADING SECTION =========================
      leading: Image.network(
        cart_prod_picture,
        width: 80,
        height: 80,
      ),
      //============================SUBTITLE SECTION ======================
      subtitle: Column(
        children: [
          //=====row inside column======
          Row(
            children: [
              // ==================This shows product size ===================
              Text("Size: "),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  cart_prod_size,
                  style: TextStyle(color: Colors.redAccent[400]),
                ),
              ),
              // ==================This shows product color ===================

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 8, 8, 8),
                child: Text("Color: "),
              ),
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Text(
                  cart_prod_color,
                  style: TextStyle(color: Colors.redAccent[400]),
                ),
              ),
            ],
          ),
          Container(
            alignment: Alignment.topLeft,
            child: Text(
              "Rs.$cart_prod_price",
              style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.redAccent[400]),
            ),
          ),
        ],
      ),
      trailing: Column(
        children: [
          IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
