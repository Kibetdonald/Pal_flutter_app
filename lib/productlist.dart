import 'package:flutter/material.dart';
import 'package:pal/homepage.dart';

class ProductList extends StatelessWidget {
  Widget _buildFeaturedProduct(
      {required String name, required double price, required String image}) {
    return Card(
        child: Container(
      height: 200,
      width: 150,
      child: Column(
        children: [
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
                // color: Colors.blueGrey,
                image: DecorationImage(
              image: AssetImage("images/$image"),
            )),
          ),
          Text(
            "\ksh $price",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Color(0xff9b96d6)),
          ),
          Text(
            " $name",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (ctx) => HomePage()));
          },
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],
      ),
      body: (Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 120,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search here..",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(30)),
                        ),
                      ),
                      Container(
                        height: 50,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "Featured",
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 700,
                  child: GridView.count(
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2,
                    children: [
                      _buildFeaturedProduct(
                          image: "realme.jpeg", price: 14000, name: "Realme"),
                      _buildFeaturedProduct(
                          image: "pembe.jpg", price: 100, name: "Pembe"),
                      _buildFeaturedProduct(
                          image: "realme.jpeg", price: 14000, name: "Realme"),
                      _buildFeaturedProduct(
                          image: "pembe.jpg", price: 100, name: "Pembe"),
                      _buildFeaturedProduct(
                          image: "realme.jpeg", price: 14000, name: "Realme"),
                      _buildFeaturedProduct(
                          image: "pembe.jpg", price: 100, name: "Pembe"),
                      _buildFeaturedProduct(
                          image: "realme.jpeg", price: 14000, name: "Realme"),
                      _buildFeaturedProduct(
                          image: "pembe.jpg", price: 100, name: "Pembe"),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
