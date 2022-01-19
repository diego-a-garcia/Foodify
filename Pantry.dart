import 'package:flutter/material.dart';
import 'main.dart';
import 'Freezer.dart';
import 'screen2.dart';
class MyPantryPage extends StatefulWidget {
  const MyPantryPage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  State<MyPantryPage> createState() => _MyPantryPageState();
}

class _MyPantryPageState extends State<MyPantryPage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Food Storage Navigation'),
            ),
            ListTile(
              title: const Text('Home'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyHomePage(title: "Home",))
                );
              },
            ),
            ListTile(
              title: const Text('Fridge'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer

                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MySecondPage(title: "Page 2",))
                );
              },
            ),
            ListTile(
              title: const Text('Pantry'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context );
              },
            ),
            ListTile(
              title: const Text('Freezer'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => MyFreezerPage(title: "Freezer",))
                );
              },
            ),
          ],
        ),
      ),




      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}