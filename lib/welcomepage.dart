import 'package:flutter/material.dart';
import 'package:flutter_dev/choices.dart';

void main() => runApp(const Welcome());

class Welcome extends StatelessWidget {
  const Welcome({Key? key}) : super(key: key);

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
          const SizedBox(height: 25),
          const Icon(
            Icons.pets,
            size: 60,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 5),
            child: const Text(
              'PawPlace',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.only(bottom: 50),
            child: const Text(
              'Doggo Canine Pawsome',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'PawPlace is a dog shop where we offer a wide selection of '
              'dog breeds for users to choose from. Our goal is to provide a '
              'platform where dog lovers can find their perfect companion, '
              'whether it be a playful and energetic dog breed. We pride'
              'ourselves on providing detailed information about each breed, including '
              'their temperament, size, and exercise requirements, so that users can make an '
              'informed decision about which dog is best for them.',
              style: TextStyle(
                fontSize: 14,
              ),
              softWrap: true,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Shop now'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 2, 0, 0)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (cpntext) => Shopping()));
                print(nameController.text);
                print(passwordController.text);
              },
            ),
          ),
        ],
      ),
    );
  }
}
