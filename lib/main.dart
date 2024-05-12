import 'package:animals/animal_card.dart';
import 'package:animals/model/animal.dart';
import 'package:animals/widget/details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Animal> animals = [];

  @override
  void initState() {
    // TODO: implement initState
    animals = animalList;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animal',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Animal'),
        ),
        body: ListView.builder(
          itemCount: animals.length,
          itemBuilder: (context, index) => AnimalCard(
            animal: animals[index],
            onPressed: () {
              Get.to(DetailsPage(animal: animals[index]));
            },
          ),
        ),
      ),
    );
  }
}
