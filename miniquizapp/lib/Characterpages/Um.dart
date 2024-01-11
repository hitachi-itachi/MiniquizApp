import 'dart:ui';

import 'package:flutter/material.dart';

class Um extends StatelessWidget {
  const Um({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ms-Um",
          style: TextStyle(
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 137, 98, 220),
                Colors.purple,
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              stops: [0.0, 1.0],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: Center(
                  child: Container(
                    height: 200,
                    width: 410,
                    child: Image.asset(
                      "images/um.png", // Replace this with the correct path for your image
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Ms. Um, whose real name remains an enigmatic mystery, stands as the imposing landlord of a peculiar residence known for its eerie reputation. Tall and striking, she possesses an air of intimidating elegance, with piercing eyes that seem to dissect one's thoughts. Her demeanor is both commanding and unnerving, her every movement calculated and precise.\n\nBehind her facade as a landlord lies a mastermind adept at manipulating the strings of chaos. Underneath her seemingly composed exterior, she harbors a complex, labyrinthine mind, orchestrating a web of unsettling events within the walls of her property. She exudes an unsettling charm, capable of luring unsuspecting souls into her intricate designs with a disarming smile.\n\nMs. Um is the clandestine leader of a clandestine group of individuals, each bearing a penchant for the unconventional and the macabre. As the linchpin of this group of psychopaths, she holds an iron grip on their loyalty, utilizing their twisted inclinations to her advantage. Her influence over them is profound, fostering an allegiance rooted in both fear and admiration.\n\nShe operates in the shadows, weaving a tapestry of psychological manipulation and sinister schemes, all while maintaining the façade of a responsible landlord. Her enigmatic nature and chilling charisma make her a figure shrouded in mystery and fear, leaving those who encounter her questioning her true intentions and the depths of her malevolence.",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              SizedBox(
                  height:
                      100), // Adding some extra space at the end for better scrolling
            ],
          ),
        ),
      ),
    );
  }
}
