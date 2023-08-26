import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
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
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 500, // Adjust the width of the container
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                    hintText: "a********@gmail.com",
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Container(
                width: 500, // Adjust the width of the container
                child: TextField(
                  controller: _passwordController,
                  obscureText: true, // Hide the password
                  decoration: const InputDecoration(
                    labelText: 'Password',
                    hintText: "***********",
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(height: 46),
              Container(
                width: 400, // Adjust the width of the container
                child: ElevatedButton(
                  onPressed: () {
                    String email = _emailController.text;
                    String password = _passwordController.text;
                    // Implement your login logic using the provided email and password
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromARGB(255, 39, 120, 185),
                    minimumSize: const Size(
                        double.infinity, 70), // Adjust the height of the button
                  ),
                  child: const Text('Login'),
                ),
              ),
              const SizedBox(height: 26),
              Align(
                alignment: Alignment.centerRight,
                child: Container(
                  width: 200, // Adjust the width of the container
                  height: 200, // Adjust the height of the container
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/kisspng-whiskers-cat-middle-finger-maneki-neko-united-stat-middle-finger-5b1748789fd631.8418567715282525366547.png', // Replace with your image path
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
