import 'package:animals/model/animal.dart';
import 'package:animals/widget/information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailsPage extends StatelessWidget {
  const DetailsPage({required this.animal});

  final Animal animal;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            animal.name,
            style: TextStyle(fontFamily: 'PatrickHand-Regular', fontSize: 30.0),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 300.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: GestureDetector(
                  child: Hero(
                    tag: animal.id,
                    child: Image.asset(
                      animal.animalimage,
                      width: 200,
                      height: 200,
                    ),
                  ),
                  onTap: () => Get.back(),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    Header(text: 'Description'),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        padding: EdgeInsets.all(10.0),
                        child: SubHeader(text: animal.description)),
                  ],
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
