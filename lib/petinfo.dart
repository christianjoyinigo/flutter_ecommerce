import 'package:flutter/material.dart';
import 'package:flutter_dev/buynow.dart';
import 'package:flutter_dev/choices.dart';

void main() => runApp(const Petinfo());

class Petinfo extends StatelessWidget {
  const Petinfo({Key? key}) : super(key: key);

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
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (cpntext) => Shopping()));
            },
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 300, 0),
              child: Icon(
                Icons.chevron_left,
                size: 60,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(50, 8, 50, 8),
                  child: Image(
                    image: NetworkImage(
                        'https://bowwowinsurance.com.au/wp-content/uploads/2018/10/akita-700x700.jpg'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Akita',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 250, 0),
            child: Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.only(bottom: 20),
              child: const Text(
                '₱20,000',
                style: TextStyle(
                  color: Color.fromARGB(255, 214, 14, 14),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: const Text(
              'Recommended for: Small families, singles (wary of strangers)',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 15, 125, 0),
            child: const Text(
              'Maintenance Level: High',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 15, 150, 0),
            child: const Text(
              'Lifespan: 11-15 years',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 15, 170, 0),
            child: const Text(
              'Temperament: Active, loyal',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 15, 15, 0),
            child: const Text(
              'Health Risk: High probability of health issues during its lifetime, hence it is one of the more expensive breeds to insure.',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.all(10),
            child: ElevatedButton(
              child: const Text('Order Now'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 2, 0, 0)),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (cpntext) => Buynow()));
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
