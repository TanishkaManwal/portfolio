import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> _launchUrl(url) async {
  if (!await launchUrl(url)) {
    throw 'Could not launch $url';
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: const Color.fromARGB(255,143,176,216),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 102, 196),
        elevation: 20,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Center(
            child: CircleAvatar(
              radius: 60,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage("assets/images/girl.jpg"),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          const Text(
            'Tanishka Manwal',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Montserrat'),
          ),
          //Resume
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://drive.google.com/file/d/1r0IFfZdMk-lPS5D1_F3tfi6BDcVTChj5/view?usp=sharing');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.file_copy_outlined,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Resume",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //LinkedIn
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.linkedin.com/in/tanishka-manwal-457b06280?utm_source=share&utm_campaign=share_via&utm_content=profile&utm_medium=ios_app');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.linkedinIn,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "LinkedIn",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //GitHub
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse('https://github.com/TanishkaManwal');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "GitHub",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //Leetcode
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://leetcode.com/TANISHKAMANWAL/');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.code,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Leetcode",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //Twitter
          GestureDetector(
            onTap: () {
              final Uri url = Uri.parse(
                  'https://www.instagram.com/stopit_tani?igsh=MWdodmF4cDJiNjVkcg%3D%3D&utm_source=qr');
              _launchUrl(url);
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Instagram",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          //Spacing
          const SizedBox(
            height: 10,
          ),
          //Projects
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'projects_page');
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(20)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.file,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height:10),
           GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'blog_page');
            },
            child: Container(
              height: 50,
              width: 300,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 25, 102, 196),
                  borderRadius: BorderRadius.circular(30)),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(
                      FontAwesomeIcons.blog,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Blogs",
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

        

