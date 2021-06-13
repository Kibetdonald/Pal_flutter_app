import 'package:flutter/material.dart';
import 'package:pal/productlist.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _buildFeaturedProduct(
      {required String name, required double price, required String image}) {
    return Card(
        child: Container(
      height: 150,
      width: 150,
      child: Column(
        children: [
          Container(
            height: 100,
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

  Widget _buildCategoryProduct({required String image}) {
    return CircleAvatar(
      maxRadius: 40,
      backgroundColor: Colors.blue[400],
      child: Center(
        child: Container(
          height: 40,
          child: Image(
            // color: Colors.white,
            image: AssetImage("images/$image"),
          ),
        ),
      ),
    );
  }

  bool homecolor = true;
  bool cartcolor = false;
  bool contactcolor = false;
  bool aboutcolor = false;

  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@gmail.com"),
              currentAccountPicture: CircleAvatar(
                maxRadius: 45,
                backgroundImage: AssetImage("images/images.png"),
              ),
            ),
            ListTile(
              enabled: homecolor,
              selected: true,
              onTap: () => {
                setState(() {
                  cartcolor = false;
                  contactcolor = false;
                  aboutcolor = false;
                })
              },
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
            ListTile(
              enabled: cartcolor,
              onTap: () => {
                setState(() {
                  homecolor = false;
                  contactcolor = false;
                  aboutcolor = false;
                })
              },
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
            ),
            ListTile(
              enabled: contactcolor,
              onTap: () => {
                setState(() {
                  homecolor = false;
                  cartcolor = false;
                  aboutcolor = false;
                })
              },
              leading: Icon(Icons.contact_mail),
              title: Text("Contact Us"),
            ),
            ListTile(
              enabled: aboutcolor,
              onTap: () => {
                setState(() {
                  homecolor = false;
                  cartcolor = false;
                  contactcolor = false;
                })
              },
              leading: Icon(Icons.exit_to_app),
              title: Text("Log Out"),
            ),
            ListTile(
              enabled: contactcolor,
              onTap: () => {
                setState(() {
                  homecolor = false;
                  cartcolor = false;
                  contactcolor = false;
                })
              },
              leading: Icon(Icons.info),
              title: Text("About"),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: 24),
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.blue[400],
        leading: IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: Icon(Icons.menu)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 180,
                  margin: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      //Carousel slider
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                  height: 300,
                                  child: Column(
                                    children: <Widget>[
                                      CarouselSlider(
                                          options: CarouselOptions(
                                            autoPlay: true,
                                            aspectRatio: 2.0,
                                            enlargeCenterPage: true,
                                            autoPlayCurve: Curves.fastOutSlowIn,
                                            enableInfiniteScroll: true,
                                            autoPlayAnimationDuration:
                                                Duration(milliseconds: 800),
                                            viewportFraction: 0.8,
                                            enlargeStrategy:
                                                CenterPageEnlargeStrategy
                                                    .height,
                                          ),
                                          items: [
                                            Container(
                                              margin: EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'images/slider_one.jpg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'images/slider_two.jpg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'images/acer.jpeg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                            Container(
                                              margin: EdgeInsets.all(5.0),
                                              decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          10.0),
                                                  image: DecorationImage(
                                                    image: AssetImage(
                                                      'images/gaming.jpeg',
                                                    ),
                                                    fit: BoxFit.cover,
                                                  )),
                                            ),
                                          ]),
                                    ],
                                  ))
                            ],
                          )
                        ],
                      ),

                      Container(
                        height: 20,
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
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                        builder: (ctx) => ProductList(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "See all",
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                //Featured products
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            _buildFeaturedProduct(
                                image: "realme.jpeg",
                                price: 14000,
                                name: "Realme"),
                            _buildFeaturedProduct(
                                image: "pembe.jpg", price: 100, name: "Pembe"),
                          ],
                        )
                      ],
                    )
                  ],
                ),

                //row should end here
                Container(
                  height: 50,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "View all",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),

                Container(
                    height: 60,
                    child: (Row(
                      children: [
                        //category here
                        _buildCategoryProduct(image: "mobiles.png"),
                        _buildCategoryProduct(image: "electronic.png"),
                        _buildCategoryProduct(image: "grocery.png"),
                        _buildCategoryProduct(image: "home.png"),
                      ],
                    ))),
                //Container here
                Container(
                  height: 50,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "New products",
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).pushReplacement(
                                MaterialPageRoute(
                                  builder: (ctx) => ProductList(),
                                ),
                              );
                            },
                            child: Text(
                              "View all",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Column(
                      children: [
                        Row(
                          children: [
                            _buildFeaturedProduct(
                                image: "lenovo.jpeg",
                                price: 80000,
                                name: "Lenovo z520"),
                            _buildFeaturedProduct(
                                image: "acer.jpeg",
                                price: 62000,
                                name: "Acer z500 Pc"),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
