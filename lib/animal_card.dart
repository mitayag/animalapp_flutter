import 'package:animals/model/animal.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AnimalCard extends StatelessWidget {
  AnimalCard({required this.animal, required this.onPressed});
  Animal animal;

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        //color: Colors.yellow,
        padding: EdgeInsets.all(5.0),
        width: double.infinity,
        height: 320.0,

        /*
                * Stack widget is used to place the widgets on top of each other.Use the Positioned widget to place the widgets at a specific position.
                * BoxDecoration is used to give the container a background color and border radius.
                */
        child: Stack(
          children: <Widget>[
            // Positioned widget is used to place the widgets at a specific position. For the first container, it is placed at the top left corner.
            //  The container is given a background color of red and a border radius of 10.
            //  The constraints property is used to set the maximum height and width of the container.
            Positioned(
              left: 60,
              top: 100,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                constraints: BoxConstraints(maxHeight: 200, maxWidth: 300),
              ),
            ),

            //Positioned widget is used to place the widgets at a specific position. For the second container, it is placed at the top right corner.
            // It will hold the images. Its left property is set to 3.0
            Positioned(
              left: 3.0,
              top: 55.0,
              child: Hero(
                tag: animal.id,
                transitionOnUserGestures: true,
                child: Image.asset(
                  animal.animalimage,
                  width: 200,
                  height: 250,
                ),
              ),
            ),

            Positioned(
              top: 180,
              left: 200.0,
              child: Center(
                child: Text(
                  animal.name,
                  style: TextStyle(
                      fontSize: 30,
                      // /color: Colors.white,
                      fontFamily: 'PatrickHand-Regular',
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
