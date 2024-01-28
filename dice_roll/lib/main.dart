import 'package:flutter/material.dart'; // yeh import karna jaruri hai , isse import karne se flutter ka material design use kar sakte hai
import 'package:dice_roll/gradient_container.dart'; // yeh import karna thha doosre file ka
//right click onthe center , click on refactor code to get the options and you ca continue from there
void main() {
  runApp(
    const MaterialApp(//const karne se hot reload me error nahi aayega
      home: Scaffold(
        body: GradientContainer(
          Colors.orange,
          Colors.amber

        )
      ),
    ),
  );
}
// ctrl+shift+R to refactor the code | ctrl+shift+F to format the code | ctrl+shift+P to open the command palette
// you start from the emulator then command flutter run to run the app
// instead of hot reload try hot restart using ctrl+F5(directly from the emulator) or use the command R from the terminal

