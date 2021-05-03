import 'package:flutter/material.dart';
import 'google_signin.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yogasan App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                final provider =
                    Provider.of<GoogleProvider>(context, listen: false);
                provider.login();
              },
              child: Text('SignIn With Google'),
            ),
            TextButton(
              onPressed: () {},
              child: Text('login with google'),
            ),
          ],
        ),
      ),
    );
  }
}
