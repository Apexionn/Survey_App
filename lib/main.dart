import 'package:flutter/material.dart';
import 'Home.dart';

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 255, 159, 81)),
        // useMaterial3: true,
        appBarTheme: const AppBarTheme(color: Color(0xFFFC8B03)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Color(0xFFFC8B03), // Set selected label color
        ),
      ),
      home: const MyHomePage(title: 'Survey App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => Login();
}

class Login extends State<MyHomePage> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  String errorText = ''; // Add a variable to store the error message.

  void login() {
    String username = usernameController.text;
    String password = passwordController.text;

    // Check if the entered username and password are correct.
    if (username == "Lintang" && password == "123") {
      setState(() {
        errorText = ''; 
      });

      // Navigate to the Home screen or perform any other actions after successful login.
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => Home(username: username, password: password),
        ),
      );
    } else {
      // Display an error message if the username or password is incorrect.
      setState(() {
        errorText = 'Username or Password is incorrect!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.bottomCenter,
        child: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                child: Container(
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Ellipse_1.png'),
                      fit: BoxFit.fill,
                    ),
                  ),

                  padding: const EdgeInsets.fromLTRB(50, 110, 50, 0),
                  height: 440,
                  width: 500,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'LOGIN',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontFamily: 'K2D',
                          fontWeight: FontWeight.w800,
                          shadows: [
                            Shadow(
                                offset: Offset(5, 5),
                                blurRadius: 20
                            ),
                          ]
                        ),
                      ),

                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8), // Optional: Add border radius for rounded corners.
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: const Offset(0, 3), // Offset from the top-left corner
                      ),
                    ],
                  ),

                  child: TextField(
                    controller: usernameController,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: InputBorder.none, // Remove the border of the input field
                      labelText: 'Enter your username',
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        spreadRadius: 2,
                        blurRadius: 5, 
                        offset: const Offset(0, 3), 
                      ),
                    ],
                  ),

                  child: TextField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.black),
                    cursorColor: Colors.black,
                    obscureText: true,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.symmetric(horizontal: 15),
                      border: InputBorder.none,
                      labelText: 'Enter your password',
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                Container(
                  width: 100, // Set the width of the button
                  child: ElevatedButton(
                    onPressed: () {
                      login();
                    },
                    child: const Text('Login'),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color(0xFFFEE8B0)), // Button color
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(9.0),
                          side: BorderSide(color: Color(0xFFFFD192)), // Outline color
                        ),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(Color(0xFFFFAD39)), // Text color
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  errorText,
                  style: const TextStyle(
                    color: Colors.white,
                    fontFamily: 'K2D',
                    fontWeight: FontWeight.w800,
                    shadows: [
                      Shadow(
                        offset: Offset(5, 5),
                        blurRadius: 50,
                      ),
                    ]
                  ),
                ),
                const SizedBox(height: 20),
                  ],
                ),
              ),
              ),
              Positioned(
                bottom: 380,
                child: Center(
                  child: Image.asset(
                    'assets/images/login_IMG.png',
                    height: 400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}