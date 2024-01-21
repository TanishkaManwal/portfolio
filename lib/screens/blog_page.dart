import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}
class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,143,176,216),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "BLOGS",
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        backgroundColor:  Color.fromARGB(255, 25, 102, 196),
        elevation: 30,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
            GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.tripadvisor.in/Attractions-g294196-Activities-South_Korea.html');
              _launchUrl(url);
            },
            child: Center(child:Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                             radius: 60,
                             backgroundColor: Colors.transparent,
                             backgroundImage: AssetImage("assets/images/image.1.jpg"),
            ),
                  ),
                  Text(
                    "Places to visit in Korea",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),)
          ),
          SizedBox(height:10),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://traveltriangle.com/blog/new-zealand-tourist-attractions/');
              _launchUrl(url);
            },
            child:Center( child:Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                             radius: 60,
                             backgroundColor: Colors.transparent,
                             backgroundImage: AssetImage("assets/images/image.2.jpg"),
            ),
                  ),
                  Text(
                    "Places to visit in New Zealand",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),)
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.visitnorway.com/places-to-go/top-10-places-in-norway/');
              _launchUrl(url);
            },
            child:Center(child:Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                             radius: 60,
                             backgroundColor: Colors.transparent,
                             backgroundImage: AssetImage("assets/images/image.3.jpg"),
            ),
                  ),
                  Text(
                    "Places to visit in Norway",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),)
          ),
          SizedBox(height: 10),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.tripadvisor.in/Attractions-g294200-Activities-Egypt.html');
              _launchUrl(url);
            },
            child: Center(child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                             radius: 60,
                             backgroundColor: Colors.transparent,
                             backgroundImage: AssetImage("assets/images/image.4.jpg"),
            ),
                  ),
                  Text(
                    "Places to visit in Egypt",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),)
          ),
          SizedBox(height:10),
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.tripadvisor.in/Attractions-g186338-Activities-London_England.html');
              _launchUrl(url);
            },
            child: Center(child: Container(
              height: 100,
              width: 400,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: CircleAvatar(
                             radius: 60,
                             backgroundColor: Colors.transparent,
                             backgroundImage: AssetImage("assets/images/image.5.jpg"),
            ),
                  ),
                  Text(
                    "Places to visit in London",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),)
          ),

        ],
      ),
    );
  }
}