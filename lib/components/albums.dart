import 'package:flutter/material.dart';
import 'package:flutter_gellary/components/all_photos.dart';
import 'package:flutter_gellary/components/bluetooth.dart';
import 'package:flutter_gellary/components/favorite.dart';
import 'package:flutter_gellary/components/camera.dart';
import 'package:get/get.dart';

class Folder extends StatelessWidget {
  Folder({Key? key}) : super(key: key);

  List<String> folderName = [
    'All Photos',
    'Camera',
    'Favorite',
    'Bluetooth',
    'Downloads',
    'Shared',
    'ScreenShots',
    'SnapChat',
    'Facebook',
    'WhatsApp',
  ];

  List<String> coverImageLinks = [
    'https://media.istockphoto.com/photos/unique-faces-collage-picture-id1291584234?b=1&k=20&m=1291584234&s=170667a&w=0&h=ilxJUdfUg0NdqthzfPgAPZFCDIxq5dW6JCRhjIhZOAI=',
    'https://www.oberlo.com/media/1603970279-pexels-photo-3.jpg?fit=max&fm=jpg&w=1824',
    'https://www.reshot.com/static/home-pages/slider/photos_hero_02.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-jafaH7At1qgj8nhAhW3_XAhaQDphVhis3A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSzeYZF32oJK_Y2SfYZHf08H6Y_RGqvsXhC7Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ66gziccnFsOF8DVIh99EnJUT8PYXApFe-gg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQeLqhEhG4kdNwkzk9QbvaHsnloVaWj7kY8ww&usqp=CAU',
    'https://farm6.staticflickr.com/5066/5893395540_af1965d474_o.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4Wb-7EToIARk9bmqIWvbjno1tMC-V0ZIBiw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwclY3q-sh2CLuA47kocKqEBdOYikeqP1iEA&usqp=CAU',
  ];

  List<Widget> routePaths = [
    AllPhotos(
      appBarTitle: "All Photos",
      appBarColor: Colors.pinkAccent,
    ),
    Camera(
      appBarTitle: "Camera",
      appBarColor: Colors.purpleAccent,
    ),
    Favorite(
      appBarTitle: "Favorite",
      appBarColor: Colors.teal,
    ),
    Bluetooht(
      appBarTitle: "Bluetooth",
      appBarColor: Colors.redAccent,
    ),
    Camera(
      appBarTitle: "Downloads",
      appBarColor: Colors.orangeAccent,
    ),
    Favorite(
      appBarTitle: "Shared",
      appBarColor: Colors.green,
    ),
    Camera(
      appBarTitle: "ScreenShots",
      appBarColor: Colors.indigo,
    ),
    Favorite(
      appBarTitle: "SnapChat",
      appBarColor: Colors.lime,
    ),
    Bluetooht(
      appBarTitle: "Facebook",
      appBarColor: Colors.pink.shade300,
    ),
    Camera(
      appBarTitle: "WhatsApp",
      appBarColor: Colors.blue.shade300,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        margin: EdgeInsets.all(50),
        child: Column(
          children: [
            Wrap(
              spacing: 40,
              runSpacing: 40,
              children: [
                for (var i = 0; i < folderName.length; i++)
                  Column(
                    children: [
                      InkWell(
                        child: Container(
                          width: 250,
                          height: 250,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: NetworkImage(
                                coverImageLinks[i],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        onTap: () => Get.to(
                          routePaths[i],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        folderName[i],
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
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
