import 'package:flutter/material.dart';
import 'package:flutter_dev/alaskab.dart';
import 'package:flutter_dev/petinfo.dart';

void main() => runApp(const Shopping());

class Shopping extends StatelessWidget {
  const Shopping({Key? key}) : super(key: key);

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

class _MyStatefulWidgetState extends State<MyStatefulWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 200),
    );
    _animation = Tween<double>(begin: 1.0, end: 0.8).animate(
      CurvedAnimation(
        parent: _animationController,
        curve: Curves.easeInOut,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

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
              'Dog Choices',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 40,
              ),
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Petinfo(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2018/10/akita-700x700.jpg'),
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
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Alaskan(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2020/09/shutterstock_15250126-Alaskan-Husky-in-front-of-white-background-thumbnail.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Alaskan Husky',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Petinfo(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2018/10/basset-hound-700x700.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Basset Hound',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Petinfo(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2018/10/beagle-700x700.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Beagle',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Petinfo(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2018/10/chihuahua-700x700.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Chihuahua',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          GestureDetector(
            onTapDown: (_) {
              _animationController.forward();
            },
            onTapUp: (_) {
              _animationController.reverse();
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Petinfo(),
                ),
              );
            },
            onTapCancel: () {
              _animationController.reverse();
            },
            child: Container(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 20),
              child: AnimatedBuilder(
                animation: _animation,
                builder: (context, child) {
                  return Transform.scale(
                    scale: _animation.value,
                    child: child,
                  );
                },
                child: Column(
                  children: [
                    Image(
                      image: NetworkImage(
                          'https://bowwowinsurance.com.au/wp-content/uploads/2020/09/shutterstock_445691395-Welsh-Cardigan-Corgi-thumbnails.jpg'),
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      'Cardigan Welsh Corgi',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
