import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int counter = 1;

  Widget _buildCartProducts() {
    return Container(
      height: 200,
      width: double.infinity,
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/gaming.jpeg"),
                    ),
                  ),
                ),
                Container(
                  height: 140,
                  width: 200,
                  child: ListTile(
                    title: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text("Laptop"),
                          ],
                        ),
                        Text("Electronics"),
                        Text(
                          "ksh. 43000",
                          style: TextStyle(
                              color: Color(0xff9b96d6),
                              fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 40,
                          width: 140,
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
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
                          width: double.infinity,
                          // color: Colors.red,
                          child: ElevatedButton(
                            onPressed: () {},
                            child: Text("Check Out"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
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
          centerTitle: true,
          title: Text("Cart"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_none),
            ),
          ],
        ),
        //Body starts
        body: Column(
          children: [
            _buildCartProducts(),
            _buildCartProducts(),
            _buildCartProducts(),
            _buildCartProducts(),
          ],
        ));
  }
}
