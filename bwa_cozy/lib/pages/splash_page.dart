import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            top: 50,
            left: 30
          ),
          child: Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/cozy_logo.png')
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}