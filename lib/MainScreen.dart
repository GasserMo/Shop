import 'package:flutter/material.dart';
import 'SignIn.dart';
import 'SignUp.dart';
import 'main.dart';
import 'constants.dart';
import 'Cart.dart';
class MainScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Container(
        color: bright,
    child: Scaffold(
    backgroundColor:  bright,
    body: Container(
      child: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
    children: [
      Container(
      height: 70,
      color: back,
      child: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20.0,left: 15),
                child: Row(
                  children: [
                     InkWell(
                       onTap: ()=> Navigator.pop(context),
                       child: Icon(
                            Icons.backspace,
                          color: Colors.white,
                        ),
                     ),
                    SizedBox(width: 130,),
                    Center(
                      child: Text("Cloud",style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                      ),),
                    ),
                    SizedBox(width: 130,),
                    InkWell(
                      onTap: ()=> Navigator.pushNamed(context, '/cart'),
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),

        ],
      ),
    ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top:5,left: 10),
                      child: Text("Jeans",
                        style: TextStyle(
                            color: back,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),))
                ],
              ),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                clothDetails(image: AssetImage('Images/jeans.jpg'),
                    name: 'wide legs',
                    price: '\$100'),
                clothDetails(image: AssetImage('Images/jeans2.jpg'),
                    name: 'black jeans',
                    price: '\$120'),
                clothDetails(image: AssetImage('Images/jeans4.jpg'),
                    name: 'dark grey',
                    price: '\$70'),
                clothDetails(image: AssetImage('Images/jeans5.jpg'),
                    name: 'grey',
                    price: '\$85'),
                clothDetails(image: AssetImage('Images/jeans6.jpg'),
                    name: 'light blue',
                    price: '\$120'),
                clothDetails(image: AssetImage('Images/jeans3.webp'),
                    name: 'blue',
                    price: '\$160'),

              ],
            ),
          ],
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top:5,left: 10),
                      child: Text("Tshirts",
                        style: TextStyle(
                            color: back,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),))
                ],
              ),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                clothDetails(image: AssetImage('Images/tshirt1.jpg'),
                    name: 'sport top',
                    price: '\$9'),

                clothDetails(image: AssetImage('Images/tshirt2.webp'),
                    name: 'black sweatshirt',
                    price: '\$50'),
                clothDetails(image: AssetImage('Images/tshirt3.webp'),
                    name: 'printed tshirt',
                    price: '\$10'),
                clothDetails(image: AssetImage('Images/tshirt4.webp'),
                    name: 'white basic',
                    price: '\$10'),

              ],
            ),
          ],
        ),
      ),
      Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top:5,left: 10),
                      child: Text("Shoes",
                        style: TextStyle(
                            color: back,
                            fontSize: 30,
                            fontWeight: FontWeight.bold
                        ),))
                ],
              ),
            ],
          ),
        ),
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                clothDetails(image: AssetImage('Images/shoes1.jpg'),
                    name: 'Offwhite 50s',
                    price: '\$200'),
                clothDetails(image: AssetImage('Images/shoes2.jpg'),
                    name: 'jordan 1s',
                    price: '\$250'),
                clothDetails(image: AssetImage('Images/shoes5.jpg'),
                    name: 'black boat',
                    price: '\$160'),
                clothDetails(image: AssetImage('Images/shoes4.jpg'),
                    name: ' flat shoes',
                    price: '\$100'),
                clothDetails(image: AssetImage('Images/shoes.webp'),
                    name: 'white flat shoes',
                    price: '\$120'),
                clothDetails(image: AssetImage('Images/shoes3.webp'),
                    name: 'Coverse',
                    price: '\$190'),
              ],
            ),
          ],
        ),
      ),
      SizedBox(height: 20,)
    ],
    ),
      ),
    )));
  }
}
class clothDetails extends StatelessWidget {
  final String price;
  final String name;
  final AssetImage image;
  clothDetails({ required this.image,required this.name,required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      child: Card(
        color: Color(0xFFF0F1F3),
        child: Stack(
          children: [

            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image(
                    height:160,
                    width: 160,
                    image: image),
                Container(
                  height: 32,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            bright.withOpacity(0.5),
                            bright.withOpacity(0.9)
                          ]
                      )
                  ),
                  child: Text(name,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: back,
                        fontFamily: 'Fjalla',
                        fontWeight: FontWeight.bold,
                        fontSize:25
                    ),),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price,
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                      color:  back
                  ),),
                IconButton(onPressed: (){},
                    icon: Icon(Icons.shopping_cart,
                    color: back,))
              ],
            ),

          ],
        ) ,
      ),
    );
  }
}
