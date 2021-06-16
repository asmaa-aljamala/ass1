

import 'package:flutter/material.dart';
import 'package:flutter_app2/slider.dart';
import 'image.dart';
import 'main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: ProductDetails(),
    );
  }
}

class ProductDetails extends StatelessWidget {
  List<SliderModel> imagesPaths = [
    SliderModel('assest/img7.jpg', 'Sweets'),
    SliderModel('assest/img1.jpg', 'Pizza'),
    SliderModel('assest/img2.jpg', 'Garnish'
        ),
  ];
  //coloredFilter
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('home'),
          centerTitle: true,
          // backgroundColor: Color(0xff963369),
          backgroundColor: Colors.red,
          elevation: 3,
          leading: Icon(
            Icons.search,
            color: Colors.black,
            size: 30.0,
          ),
          actions: [
            Icon(
              Icons.arrow_forward,
              color: Colors.black,
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assest/img4.jpg'),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken)),
                    ),
                  ),
            SizedBox(
                height: 10,),
                  Text('Categories',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold

                  )),

                  SizedBox(

                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                     child: Row(children: imagesPaths.map((e) {
                  return ImageWidget(e.imagePath, e.title);
                }).toList(),
                ),
                   ),
                  SizedBox(
                    height: 10,),
                  Text('New Product',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  SizedBox(
                    height: 5,),

                 Row(
                   
                   children: [

                   Container(
                   height: 160,
                   width: 150,
                   alignment: Alignment.center,
                   margin: EdgeInsets.symmetric(horizontal: 8),
                   decoration: BoxDecoration(
                       shape: BoxShape.rectangle,
                       borderRadius: BorderRadius.circular(10),
                       image: DecorationImage(image: AssetImage('assest/img9.jpg'),
                           fit: BoxFit.cover,
                           colorFilter: ColorFilter .mode(Colors.black.withOpacity(0.5), BlendMode.darken)
                       )),

         ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(Icons.star,),
                      Icon(Icons.star,),
                      Icon(Icons.star_border,),
                      Icon(Icons.star_border,),
                    ],
                  ),
                Text('Product name :pizza.',style: TextStyle(fontSize: 15)),
                Text('price : 200')
              ],)
                 ],)
            ]),
          // ),
        ),
        ),

    );
  }
}