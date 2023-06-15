import 'package:flutter/material.dart';
import 'package:flutter_dev/choices.dart';
import 'package:flutter_dev/petinfo.dart';

void main() => runApp(const Success());

class Success extends StatelessWidget {
  const Success({Key? key}) : super(key: key);

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
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          const SizedBox(
            height: 69,
          ),
          Center(
            child: Column(
              children: [
                Icon(
                  Icons.pets,
                  size: 300,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                const SizedBox(height: 10),
                Text(
                  'Thank you for choosing me to be your companions',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 69,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Back to choices'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 2, 0, 0)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (cpntext) => Shopping()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
