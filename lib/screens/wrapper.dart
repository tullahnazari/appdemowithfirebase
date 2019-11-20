import 'package:appdemowithfirebase/models/user.dart';
import 'package:appdemowithfirebase/screens/authenticate/authenticate.dart';
import 'package:appdemowithfirebase/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
