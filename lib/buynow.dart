import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dev/petinfo.dart';
import 'package:flutter_dev/success.dart';

void main() => runApp(const Buynow());

class Buynow extends StatelessWidget {
  const Buynow({Key? key}) : super(key: key);

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
                  context, MaterialPageRoute(builder: (cpntext) => Petinfo()));
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
          const Padding(
            padding: EdgeInsets.all(32),
            child: Text(
              'To facilitate the coordination of our meetup, it would be immensely helpful if you could provide me with your address. This will enable us to determine a suitable location for our meeting. Moreover, I kindly request your contact number as well, as it will allow us to stay in touch and communicate effectively. Your cooperation in providing this information is highly appreciated.',
              style: TextStyle(
                fontSize: 14,
              ),
              softWrap: true,
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              obscureText: false,
              controller: nameController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.grey.shade400,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10)),
                  labelText: 'Address',
                  hintStyle: TextStyle(color: Colors.grey[500])),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: TextField(
              keyboardType: TextInputType.phone,
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(11),
              ],
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey.shade400,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                labelText: 'Phone number',
                hintStyle: TextStyle(color: Colors.grey[500]),
              ),
            ),
          ),
          const SizedBox(
            height: 69,
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            child: ElevatedButton(
              child: const Text('Shop now'),
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(
                    Color.fromARGB(255, 2, 0, 0)),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (cpntext) => Success()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
