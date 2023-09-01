import 'package:flutter/material.dart';
import 'components/paino_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black12,
        title: const Text('My Piano App'),
      ),
      body: Column(children: [        
        Expanded(
          flex: 3,
          child: ListView.builder(
            itemCount: 2,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, infex) {
              return Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PianoWhiteButton(name: "C3"), 
                      PianoWhiteButton(name: "D3"),
                      PianoWhiteButton(name: "E3"),
                      PianoWhiteButton(name: "F3"),
                      PianoWhiteButton(name: "G3"),
                      PianoWhiteButton(name: "A3"),                                          
                      PianoWhiteButton(name: "B3"),                      
                    ],
                  ),
                  Positioned(
                    height: 220,
                    left: 25.0,
                    right: 15,
                    top: 0,
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        PianoBlackButton(name: "C&3"),                        
                        PianoBlackButton(name: "D&3"),                        
                        const SizedBox(width: 50),
                        PianoBlackButton(name: "F&3"),
                        PianoBlackButton(name: "G&3"),
                        PianoBlackButton(name: "A&3"),                                        
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ]),
    );
  }
}