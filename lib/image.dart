import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  String title;
  String imagePath;
  ImageWidget(this.imagePath, this.title);
  @override
  Widget build(BuildContext context) {
    return
        Container(
          height: 160,
          width: 150,
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(image: AssetImage(imagePath),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter .mode(Colors.black.withOpacity(0.5), BlendMode.darken)
              )),

          child: Text(title,
              style: TextStyle(color: Colors.white,fontSize: 25)),
        );


  }
}

