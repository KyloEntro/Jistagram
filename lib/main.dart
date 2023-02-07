import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Components/profiles_list_view.dart';
import 'Components/content_viewer.dart';

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

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
              SizedBox(
                height: 120,
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 0),
                  child: ProfilesListView(),
                ),
              ),
              ContentViewer(),
              ContentViewer(),
              ContentViewer(),
              ContentViewer(),
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
