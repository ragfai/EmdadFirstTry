import 'package:flutter/material.dart';
import 'package:untitled1/StartPages/forgotpassword.dart';
import 'package:untitled1/StartPages/resetpassword.dart';

void main() {
  runApp(EmdadApp());
}

class EmdadApp extends StatelessWidget {
  const EmdadApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Emdad Login',
      theme: ThemeData(
        primarySwatch: Colors.green,
        fontFamily: 'MarkaziText', // Assuming you're using Markazi Text font
      ),
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9FAF9), // Set app background to #F9FAF9
      body: Stack(
        children: [
          // White box with coordinates X=20, Y=216, Width=352, Height=291
          Positioned(
            left: 20,
            top: 216,
            child: Container(
              width: 352,
              height: 291,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(33), // Corner radius of 33
              ),
            ),
          ),

          // The rest of the UI components (in front of the white box)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50),

                // Emdad Logo
                Image.asset(
                  'assets/emdad_logo.jpg', // Ensure you have this image in assets
                  height: 100,
                ),
                const SizedBox(height: 20),

                // Upper text "تسجيل الدخول" with gradient
                ShaderMask(
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [
                      Color(0xFF4B7960), // #4B7960
                      Color(0xFF728F66), // #728F66
                      Color(0xFFA2AA6D), // #A2AA6D
                    ],
                  ).createShader(
                    Rect.fromLTWH(0.0, 0.0, bounds.width, bounds.height),
                  ),
                  child: const Text(
                    'تسجيل الدخول',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color:
                          Colors.white, // This will be overridden by ShaderMask
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Email input field with gradient underline
                TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    labelText: 'أدخل بريدك الإلكتروني',
                    prefixIcon: Icon(Icons.email),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                  ),
                  keyboardType: TextInputType.emailAddress,
                  cursorColor:
                      const Color(0xFF4B7960), // Change cursor color if needed
                ),
                const SizedBox(height: 10),
                // Gradient underline for the email input field
                Container(
                  height: 1.5,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4B7960), // #4B7960
                        Color(0xFF728F66), // #728F66
                        Color(0xFFA2AA6D), // #A2AA6D
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Password input field with gradient underline
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: const InputDecoration(
                    labelText: 'أدخل كلمة مرور الخاصة بك',
                    prefixIcon: Icon(Icons.lock),
                    border: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide.none, // Remove default underline
                    ),
                  ),
                  cursorColor:
                      const Color(0xFF4B7960), // Change cursor color if needed
                ),
                const SizedBox(height: 10),
                // Gradient underline for the password input field
                Container(
                  height: 1.5,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF4B7960), // #4B7960
                        Color(0xFF728F66), // #728F66
                        Color(0xFFA2AA6D), // #A2AA6D
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),

                // Forgot password text
                SizedBox(height: 16),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the Forgot Password Screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgotPasswordScreen()),
                      );
                    },
                    child: Text(
                      'نسيت كلمة المرور؟',
                      style: TextStyle(color: Colors.black54),
                    ),
                  ),
                ),

                // Login button with gradient background, white text
                Container(
                  width: double.infinity,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF4B7960), // #4B7960
                        Color(0xFF728F66), // #728F66
                        Color(0xFFA2AA6D), // #A2AA6D
                      ],
                    ),
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      // Button action here
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 100, vertical: 15),
                      backgroundColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      disabledForegroundColor:
                          Colors.transparent.withOpacity(0.38),
                      disabledBackgroundColor: Colors.transparent
                          .withOpacity(0.12), // For disabled button states
                      shadowColor: Colors.transparent, // Remove button shadow
                    ),
                    child: const Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        color: Colors
                            .white, // The text inside the button should remain white
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),

                // Create new account text
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'ليس لديك حساب؟ إنشاء حساب',
                    style: TextStyle(color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
