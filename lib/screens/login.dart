import 'package:auto_route/auto_route.dart';
import 'package:doctorx_flutter/utils/sharedpreference.dart';
import 'package:flutter/material.dart';

@RoutePage(name: 'LoginRoutes')
class LoginScreen extends StatefulWidget {
  final Function(bool isLogin) onResult;
  const LoginScreen({super.key, required this.onResult});
  //this onresult connected to authguard becuase this widget never called manuallys

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailcontroller = TextEditingController();
  final pswdcontroller = TextEditingController();

  @override
  void initState() {
    sigupLoginPswd();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Icon(Icons.login),
              const SizedBox(height: 20.0),
              TextFormField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  labelText: 'Username or Email',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: pswdcontroller,
                obscureText: true, // For password fields
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Implement login logic here
                  _isLogin();
                },
                child: const Text('Login'),
              ),
              const SizedBox(height: 8.0),
              TextButton(
                onPressed: () {
                  // Implement forgot password logic here
                },
                child: const Text('Forgot Password?'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void sigupLoginPswd() {
    SharedPreferencesUtils.saveLoginCredentials('sunil', 'sunil@123');
  }

  void _isLogin() {
    SharedPreferencesUtils.getLoginCredentials().then((value) {
      //CHECK FOR AUTH GUARD
      if (value['username'] == emailcontroller.text &&
          value['password'] == pswdcontroller.text) {
        SharedPreferencesUtils.setLoggedIn(true);
        widget.onResult(true);
      } else {
        widget.onResult(false);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text(
          'Invalid Credentials',
        )));
      }
    });
  }
}
