import 'package:flutter/material.dart';

class Detailspage extends StatefulWidget {
  final String image;
  final String name;
  final double price;

  Detailspage({required this.image, required this.name, required this.price});

  @override
  State<Detailspage> createState() => _DetailspageState();
}

class _DetailspageState extends State<Detailspage> {
  int counter = 1;
  Widget _buildSizeBox({required String name}) {
    return Container(
      height: 60,
      width: 60,
      child: (Center(
        child: (Text(name)),
      )),
    );
  }

  Widget _buildColorBox({required String name}) {
    return Container(
      height: 60,
      width: 60,
      child: (Center(
        child: (Text(name)),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
        elevation: 0.0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_none),
          ),
        ],
      ),
      body: Container(
        child: ListView(
          children: [
            Column(
              children: [
                Center(
                  child: Container(
                    width: 250,
                    child: Card(
                      child: Container(
                        padding: EdgeInsets.all(15),
                        child: Container(
                          height: 150,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(widget.image),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  widget.name,
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "ksh ${widget.price.toString()}",
                                  style: TextStyle(
                                      color: Colors.blue,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Description",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 110,
                        child: Wrap(
                          children: [
                            Text(
                              "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. (injected humour and the like).",
                              style: TextStyle(fontSize: 16),
                            )
                          ],
                        ),
                      ),
                      Text(
                        "Size",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      //Size container here
                      Container(
                        width: 240,
                        child: Row(
                          children: [
                            _buildSizeBox(name: "S"),
                            _buildSizeBox(name: "M"),
                            _buildSizeBox(name: "L"),
                            _buildSizeBox(name: "XL"),
                          ],
                        ),
                      ),
                      Text(
                        "Color",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 1,
                      ),
                      //Size container here
                      Container(
                        width: 240,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            _buildColorBox(name: "S"),
                            _buildColorBox(name: "M"),
                            _buildColorBox(name: "L"),
                            _buildColorBox(name: "XL"),
                          ],
                        ),
                      ),
                      Text(
                        "Quantity",
                        style: (TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              child: Icon(Icons.remove),
                              onTap: () => {
                                setState(() {
                                  if (counter > 1) {
                                    counter--;
                                  }
                                }),
                              },
                            ),
                            Text(
                              counter.toString(),
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold),
                            ),
                            GestureDetector(
                              child: Icon(Icons.add),
                              onTap: () => {
                                setState(() {
                                  counter++;
                                })
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 45,
                        width: double.infinity,
                        color: Colors.blue[400],
                        margin: EdgeInsets.symmetric(vertical: 20),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Submit Order"),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
