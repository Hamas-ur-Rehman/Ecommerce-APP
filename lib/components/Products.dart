import 'package:ecomo/Pages/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_List = [
    {
      'name': "Blazer",
      'picture':
          "https://www.powerplanetonline.com/cdnassets/blazer_exclusive_de_lino_gris_00_l.jpg",
      "oldprice": "2000",
      "price": "100",
    },
    {
      'name': "Sweater",
      'picture':
          "https://images4-g.ravelrycache.com/uploads/aspeckles/660344926/D093BD3A-D727-430D-8C11-E170A7593FD6_medium2.jpg",
      "oldprice": "2000",
      "price": "200",
    },
    {
      'name': "Frock",
      'picture':
          "https://5.imimg.com/data5/MC/CA/BJ/SELLER-38931576/kids-red-frock-500x500.jpg",
      "oldprice": "2000",
      "price": "500",
    },
    {
      'name': "Jeans",
      'picture':
          "https://assets.ajio.com/medias/sys_master/root/h24/h60/15507590512670/-473Wx593H-460564121-blue-MODEL.jpg",
      "oldprice": "2000",
      "price": "700",
    },
    {
      'name': "Shalwar Kameez",
      'picture':
          "https://i.pinimg.com/736x/2d/69/af/2d69afc0043503e68723edde3cc1c6dc.jpg",
      "oldprice": "2000",
      "price": "700",
    },
    {
      'name': "Kurta",
      'picture':
          "https://cdn.shopify.com/s/files/1/0247/0828/4509/products/1543229489423-product_683x1024_3679897c-ec09-483d-997e-33af1fec3503_1024x1024.jpeg?v=1580270737",
      "oldprice": "2000",
      "price": "700",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_List.length,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Singleprod(
            prod_name: product_List[index]["name"],
            prod_picture: product_List[index]["picture"],
            prod_old_price: product_List[index]["oldprice"],
            prod_price: product_List[index]["price"],
          );
        });
  }
}

class Singleprod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Singleprod(
      {this.prod_name,
      this.prod_picture,
      this.prod_old_price,
      this.prod_price});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: Text("Hero 1"),
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetails(
                      //here we are passing values to the product details page
                      product_detail_name: prod_name,
                      product_detail_oldprice: prod_old_price,
                      product_detail_picture: prod_picture,
                      product_detail_price: prod_price,
                    ))),
            child: GridTile(
              footer: Container(
                  color: Colors.white,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text(
                          prod_name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16.0),
                        ),
                      ),
                      Text(
                        "Rs.${prod_price}",
                        style: TextStyle(
                            color: Colors.redAccent[400],
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )),
              child: Image.network(
                prod_picture,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
