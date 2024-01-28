import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Form Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Form Demo'),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Define a custom Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  _MyCustomFormState createState() => _MyCustomFormState();
}

// Define a corresponding State class.
// This class holds data related to the form.
class _MyCustomFormState extends State<MyCustomForm> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
  final myController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TextFormField(
            controller: myController,
            decoration: InputDecoration(
              labelText: 'Enter your text',
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Use the controller to retrieve text value when button is pressed
                print('Text field value: ${myController.text}');
              },
              child: Text('Submit'),
            ),
          ),
        ],
      ),
    );
  }
}
