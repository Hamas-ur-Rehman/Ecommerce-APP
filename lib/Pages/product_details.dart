import 'package:ecomo/Views/HomePage.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_picture;
  final product_detail_oldprice;
  final product_detail_price;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_picture,
      this.product_detail_oldprice,
      this.product_detail_price});

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: InkWell(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage()));
          },
          child: Text(
            "Ecomo",
          ),
        ),
        backgroundColor: Colors.redAccent[400],
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300.0,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.network(
                  widget.product_detail_picture,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: Row(
                    children: [
                      Expanded(
                        child: Text("Rs.${widget.product_detail_oldprice}",
                            style: TextStyle(
                                color: Colors.grey,
                                decoration: TextDecoration.lineThrough)),
                      ),
                      Expanded(
                        child: Text(
                          "Rs.${widget.product_detail_price}",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent[400],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          //==========1st buttons===============
          Row(
            children: [
              //====================Size Button =================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Size"),
                              content: Text("Choose the Size"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("close"),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Size"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //====================Color Button =================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Color"),
                              content: Text("Choose the Color"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("close"),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("color"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),

              //====================Qty Button =================
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                              title: Text("Quantity"),
                              content: Text("Choose the Quantity"),
                              actions: [
                                MaterialButton(
                                  onPressed: () {
                                    Navigator.of(context).pop(context);
                                  },
                                  child: Text("close"),
                                )
                              ]);
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  elevation: 0.2,
                  child: Row(
                    children: [
                      Expanded(
                        child: Text("Qty"),
                      ),
                      Expanded(
                        child: Icon(Icons.arrow_drop_down),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //==========2nd buttons===============
          Row(
            children: [
              //====================Size Button =================
              Expanded(
                child: MaterialButton(
                    onPressed: () {},
                    color: Colors.redAccent[400],
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: Text("Buy Now")),
              ),
              IconButton(
                icon: Icon(Icons.add_shopping_cart),
                onPressed: () {},
                color: Colors.redAccent[400],
              ),
              IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                  color: Colors.redAccent[400])
            ],
          ),
          Divider(),
          ListTile(
            title: Text("Product Details"),
            subtitle: Text(
                "Elit incididunt cillum deserunt occaecat anim sit dolor. Dolore incididunt ex dolor velit ipsum velit minim qui. Consectetur aliquip nisi esse nisi eiusmod dolore ullamco sit do. Adipisicing qui do sint nisi magna elit dolore. Occaecat esse officia labore duis enim occaecat excepteur. Mollit velit nisi proident velit aute tempor ex nostrud cillum. Cupidatat cupidatat quis aliquip commodo officia ad Lorem sint."),
          ),
          Divider(),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product name",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text(widget.product_detail_name),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Brand",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("Brand X"),
              ),
            ],
          ),

          Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(12, 5, 5, 5),
                child: Text(
                  "Product Condition",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Text("A1 Condition "),
              ),
            ],
          ),
          Divider(),
          //Similar products section
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("Similar Products"),
          ),
          Container(
            height: 360,
            child: SimilarProducts(),
          )
        ],
      ),
    );
  }
}

//============================Similar Products Class=======================//

class SimilarProducts extends StatefulWidget {
  @override
  _SimilarProductsState createState() => _SimilarProductsState();
}

class _SimilarProductsState extends State<SimilarProducts> {
  var product_List = [
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
          return SimilarSingleprod(
            prod_name: product_List[index]["name"],
            prod_picture: product_List[index]["picture"],
            prod_old_price: product_List[index]["oldprice"],
            prod_price: product_List[index]["price"],
          );
        });
  }
}

class SimilarSingleprod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  SimilarSingleprod(
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
