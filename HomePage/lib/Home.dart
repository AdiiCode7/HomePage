import 'package:flutter/material.dart';
import 'login.dart';
import 'signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: hom(),
    );
  }
}

class hom extends StatefulWidget {
  const hom({Key? key}) : super(key: key);

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  bool _isLoginButtonHovered = false;
  bool _isSignUpButtonHovered = false;
  bool _isMailIconHovered = false;
  bool _isFavoriteIconHovered = false;
  bool _isShareIconHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(240, 231, 231, 231),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        toolbarHeight: 79.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              onTap: () {
                // Your onTap logic here
              },
              onHover: (hovered) {
                setState(() {
                  _isMailIconHovered = hovered;
                });
              },
              child: Icon(
                Icons.mail,
                size: 40,
                color: _isMailIconHovered ? Colors.blue : Colors.white,
              ),
            ),
            const SizedBox(width: 50),
            InkWell(
              onTap: () {
                // Your onTap logic here
              },
              onHover: (hovered) {
                setState(() {
                  _isFavoriteIconHovered = hovered;
                });
              },
              child: Icon(
                Icons.favorite,
                size: 40,
                color: _isFavoriteIconHovered ? Colors.blue : Colors.white,
              ),
            ),
            const SizedBox(width: 30),
            InkWell(
              onTap: () {
                // Your onTap logic here
              },
              onHover: (hovered) {
                setState(() {
                  _isShareIconHovered = hovered;
                });
              },
              child: Icon(
                Icons.share,
                size: 40,
                color: _isShareIconHovered ? Colors.blue : Colors.white,
              ),
            ),
            const SizedBox(width: 10),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            top: 175,
            left: 749,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isLoginButtonHovered = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isLoginButtonHovered = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(
                    milliseconds: 200), // Increase width on hover
                height:
                    _isLoginButtonHovered ? 75 : 70, // Increase height on hover
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const login()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 39, 120, 185),
                    minimumSize: const Size(450, 70),
                  ),
                  child: const Text('Login Here'),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right: 175,
            child: MouseRegion(
              onEnter: (_) {
                setState(() {
                  _isSignUpButtonHovered = true;
                });
              },
              onExit: (_) {
                setState(() {
                  _isSignUpButtonHovered = false;
                });
              },
              child: AnimatedContainer(
                duration: const Duration(
                    milliseconds: 200), // Increase width on hover
                height: _isSignUpButtonHovered
                    ? 75
                    : 70, // Increase height on hover
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const signup()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 39, 120, 185),
                    minimumSize: const Size(450, 70),
                    shadowColor: Colors.lightBlue,
                  ),
                  child: const Text('Sign Up Here'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 60,
            left: 50,
            child: Image.asset(
              'assets/kisspng-computer-programming-software-developer-software-e-internet-computer-technology-5a6acebec12a92.3136952715169491827912.png',
              width: 500,
              height: 500,
            ),
          ),
        ],
      ),
    );
  }
}
