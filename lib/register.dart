import 'package:flutter/material.dart';
import 'package:flutter_dev/welcomepage.dart';

void main() => runApp(const Register());

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  static const String _title = 'My E-Commerce';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 152, 226, 222),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Icon(
              Icons.pets,
              size: 60,
              color: Colors.blue[10],
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 50),
                child: const Text(
                  'PawPlace',
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontWeight: FontWeight.w800,
                      fontSize: 40),
                )),
            SizedBox(
              height: 50,
            ),
            Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.all(5),
                child: const Text(
                  'Register',
                  style: TextStyle(fontSize: 20),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: false,
                controller: nameController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Username',
                    hintStyle: TextStyle(color: Colors.grey[500])),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade400,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    labelText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.grey[500])),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                child: const Text('Register'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 2, 0, 0)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (cpntext) => Welcome()));
                  print(nameController.text);
                  print(passwordController.text);
                },
              ),
            ),
          ],
        ));
  }
}
