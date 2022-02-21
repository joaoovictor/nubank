import 'package:flutter/material.dart';
import 'package:nubank/theme/colors.dart';

class Account extends StatefulWidget {
  Account({Key? key}) : super(key: key);

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: getBody(),
    );
  }
  getBody(){
    IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back));
  }
}