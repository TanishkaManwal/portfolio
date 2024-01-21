import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 245, 240, 228),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Projects",
          style: TextStyle(
              fontFamily: 'Montserrat',
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.w500),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 150, 132, 96),
        elevation: 20,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Center(
              child: Row(
                children: [
                  //First Project
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 150, 132, 96),
                        child: Center(child: Text("Project 1")),
                      ),
                      back: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 150, 132, 96),
                        child: Center(
                          child: Text(
                            "Description of the project",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      speed: 600,
                    ),
                  ),
                  //Second Project
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: FlipCard(
                      fill: Fill.fillBack,
                      front: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 150, 132, 96),
                        child: Center(child: Text("Project 2")),
                      ),
                      back: Container(
                        height: 200,
                        width: 150,
                        color: const Color.fromARGB(255, 150, 132, 96),
                        child: Center(
                          child: Text(
                            "Description of the project",
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      speed: 600,
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

