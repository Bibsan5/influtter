import 'package:flutter/material.dart';

class about_us extends StatelessWidget {
  const about_us({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('About Us')),
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
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Center(
            child: Image.asset(
          'assets/results.png',
          height: 50,
          width: 50,
        )),
        Text(
          'Develop By ',
          style: TextStyle(
            fontSize: 22,
            color: Color.fromARGB(255, 6, 12, 88),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Bibhuti Ojha',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          'Address:Dhikalethar,pokhara-12',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          'Phone number:9825144115',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        Text(
          'Email Id:bibsanojha@gmail.com',
          style: TextStyle(
            fontSize: 17,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          'Thankyou for using this application',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
      ]),
    );
  }
}
