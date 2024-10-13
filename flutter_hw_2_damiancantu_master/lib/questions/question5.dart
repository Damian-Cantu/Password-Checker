import 'package:flutter/material.dart';

// WILL NEED TO MAKE THIS CLASS INTO A STATEFUL WIDGET
class Question5 extends StatefulWidget {
  @override
  State<Question5> createState() => _Question5State();
}

class _Question5State extends State<Question5> {
  var img =
      "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp";
  int buttoncount = 0;
  void pressed() {
    buttoncount++;
    if (buttoncount > 2) {
      buttoncount = 0;
    }

    if (buttoncount == 0) {
      img =
          "https://i.insider.com/5e32f2a324306a19834af322?width=1800&format=jpeg&auto=webp";
    } else if (buttoncount == 1) {
      img =
          "https://i.insider.com/5de2cd3fe94e8635a17ca8ae?width=1100&format=jpeg&auto=webp";
    } else if (buttoncount == 2) {
      img =
          "https://media4.s-nbcnews.com/j/newscms/2019_47/3112746/191121-baby-yoda-cs-959a_ed40d38efa3cde7ab92df2d5492a81a5.fit-1120w.jpg";
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orange,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: Text('Images'),
          ),
          body: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.network(img),
                IconButton(
                  onPressed: pressed,
                  icon: Icon(Icons.shuffle),
                  iconSize: 40,
                ),
              ])),
    );
  }
}
