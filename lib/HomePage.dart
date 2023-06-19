import 'package:flutter/material.dart';
import 'package:see_results/about_us.dart';
import 'package:see_results/dynamic.dart';
import 'package:see_results/loginpage.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Our Results",
          style: TextStyle(
            fontFamily: 'brandFont',
            letterSpacing: 4,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const about_us();
                  },
                ),
              );
            },
            icon: const Icon(Icons.info,
                color: Color.fromARGB(255, 215, 208, 208)),
          )
        ],
        centerTitle: true,
        backgroundColor: Color.fromRGBO(82, 56, 137, 1),
      ),
      drawer: Drawer(
        child: ListView(
          // padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 79, 20, 134),
              ),
              child: Column(
                children: [
                  Image.asset('assets/results.png', height: 50, width: 50),
                  Text(
                    'Our Result',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Home'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Results'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Dynamic(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('About us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const about_us(),
                  ),
                );
              },
            ),
            ListTile(
              title: Text('Exit'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginpage()),
                );
              },
            ),
            IconButton(
              icon: const Icon(Icons.logout),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => loginpage()),
                );
              },
            ),
          ],
        ),
      ),
      backgroundColor: Color.fromRGBO(55, 25, 29, 0.6),
      body: Column(
        children: [
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 20),
                  Text(
                    'Welcome to,',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white.withOpacity(0.7),
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Our Results',
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'brandFont',
                      color: Colors.white.withOpacity(0.9),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: const [
                ResultCard(" Results", "assets/slc.png"),
                ResultCard("Notice", "assets/notice.png"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ResultCard extends StatelessWidget {
  // const ResultCard({super.key});
  final String title;

  final String img;
  const ResultCard(this.title, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Dynamic(),
          ),
        );
      },
      child: Card(
        color: Colors.white.withOpacity(1),
        elevation: 10,
        margin: const EdgeInsets.all(15),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            children: [
              Expanded(child: Image.asset(img)),
              const SizedBox(height: 10),
              Text(title,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  )),
              // Text(title, style:  const TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.red,)),
            ],
          ),
        ),
      ),
    );
  }
}
