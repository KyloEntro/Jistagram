import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/CustomCircularAvatar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.white,
          selectedItemColor: Colors.white,
        ),
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          centerTitle: false,
          titleSpacing: 20,
          title: const Text(
            "Jistagram",
            style: TextStyle(fontFamily: "GrandHotel", fontSize: 35),
          ),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.add_box_outlined,
              ),
              onPressed: () {},
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.heart,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.paperplane,
              ),
            )
          ],
        ),
        body: Container(
          color: Colors.black,
          child: ListView(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                      CustomCircularAvatar(),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 500,
                color: Colors.blue,
              ),
              Container(
                width: double.infinity,
                height: 500,
                color: Colors.purple,
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          showUnselectedLabels: false,
          backgroundColor: Colors.black,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.house),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_outlined),
              label: "Add",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.heart),
              label: "Favorite",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outlined),
              label: "Me",
            ),
          ],
        ),
      ),
    );
  }
}
