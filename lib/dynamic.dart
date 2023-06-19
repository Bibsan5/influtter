import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Dynamic extends StatelessWidget {
  const Dynamic({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Our Result'),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: const [
            ReCard("SEE Result", "http://see.gov.np/exam/results",
                "assets/slc.png"),
            ReCard("NEB Result", "http://www.neb.gov.np/results",
                "assets/neb.png"),
            ReCard("CSIT Result", "https://www.tuiost.edu.np/result",
                "assets/csit.png"),
            ReCard("IPO Result", "https://iporesult.cdsc.com.np/",
                "assets/ipo.png"),
          ],
        ));
  }
}

class ReCard extends StatelessWidget {
  // const ResultCard({super.key});
  final String title;
  final String url;
  final String img;
  const ReCard(this.title, this.url, this.img, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // UrlLauncher.launch(url);
        // ignore: deprecated_member_use
        launch(url);
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
