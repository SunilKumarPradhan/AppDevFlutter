import 'package:flutter/material.dart'; // yeh import karna jaruri hai , isse import karne se flutter ka material design use kar sakte hai

//import 'package:dice_roll/styles_text.dart'; // yeh import karna thha doosre file ka, kyunki usmein StyledText class hai




//  THIS IS THE SECOND METHOD TO PASS THE ARGUMENT INTO A FUNCTION

class GradientContainer extends StatelessWidget{ //This defines a new widget called GradientContainer that doesn't change over time (stateless).
  const GradientContainer(this.color1 , this.color2 , {super.key}); // This is a constructor for the class. It allows you to provide arguments to the class when you create it.
  
  final Color color1;
  final Color color2; // This is a property of the class. It allows you to access the arguments passed to the class when you create it.

void rollDice(){


}


 @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          colors: [color1, color2],
          radius: 1.0,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/dice-2.png',
              width: 200,
            ),
            TextButton(
              onPressed: () {
                // Implement the logic for dice roll here
              },
              child: const Text("Roll Dice"),
            ),
          ],
        ),
      ),
    );
  }
} // this is a stateless widget



//-----------------------------------------------
//METHOD 2 OT ACCEPT ARGUEMNTS IN THE FUNCTIONS
//-----------------------------------------------
/*class GradientContainer extends StatelessWidget{ //This defines a new widget called GradientContainer that doesn't change over time (stateless).
  const GradientContainer({super.key , required this.colors}); // This is a constructor for the class. It allows you to provide arguments to the class when you create it.
  
  final List<Color> colors; // This is a property of the class. It allows you to access the arguments passed to the class when you create it.

  @override //Every stateless widget must override this method.
  Widget build(context){ // The build method describes the part of the user interface represented by this widget.
    return Container(
          decoration:  BoxDecoration(
            gradient:  RadialGradient(
              colors: colors,
              radius: 1.0,
            ),
          ),// iske direct upar ka jo function hai uspe const lagana hai
          child: const Center(
            child: StyledText("Hello World !"),
          ),
    );
  }
} // this is a stateless widget

*/