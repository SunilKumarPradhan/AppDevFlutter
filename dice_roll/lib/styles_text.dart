// ye general format hai custom widget banaake ka

import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText(this.text , {super.key}); // yahaaan pe bhi const lagana padega
  final String text;

  @override
  Widget build(BuildContext context) {
    return  Text( // yahaan pe ek const alag se lagana padega
              text ,
              style: const TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            
            ),
    );
  }
}


// main file , jahaan se ye file call hui hai wahaan pe iska import karna padega
// aur exact position se Class call karna padega 