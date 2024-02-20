
import 'package:flutter/material.dart';
import 'package:foxtradeappnew/bottam_nav_pages/home.dart';
import 'package:google_fonts/google_fonts.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/back_form.png'), fit: BoxFit.cover),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 65, left: 25),
              child: const Text(
                'Welcome to Foxtrade\nSign into Account',
                style: TextStyle(fontWeight: FontWeight.w800),
              ),
            ),
             LoginForm(),
          ],
        ),
      ),
    );
  }
}



class LoginForm extends StatefulWidget {
  const  LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  String _welcomeMessage = '';
  late FocusNode _focusNode;
  bool _isButtonPressed = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_onFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _onFocusChange() {
    if (!_focusNode.hasFocus) {
      setState(() {
        _welcomeMessage = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.only(top: 150),
        child: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              TextFormField(
                controller: _usernameController,
                focusNode: _focusNode,
                decoration: const InputDecoration(
                  labelText: 'Email / Refer Code',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                onChanged: (value) {
                  setState(() {
                    _welcomeMessage = 'Welcome, $value';
                  });
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: _passwordController,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your password';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              GestureDetector(
                onTapDown: (_) {
                  setState(() {
                    _isButtonPressed = true;
                  });
                },
                onTapUp: (_) {
                  setState(() {
                    _isButtonPressed = false;
                  });
                  _onLoginButtonPressed();
                },
                onTapCancel: () {
                  setState(() {
                    _isButtonPressed = false;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 1000),
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    color: _isButtonPressed ? Colors.blue[900] : Colors.blue,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                _welcomeMessage,
                style: const TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Not a Member?', style: GoogleFonts.inter()),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Sign Up Here',
                        style: TextStyle(color: Colors.cyanAccent),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _onLoginButtonPressed() {
    if (_formKey.currentState!.validate()) {
      String username = _usernameController.text;
      String password = _passwordController.text;
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please enter valid username and password.'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }
}