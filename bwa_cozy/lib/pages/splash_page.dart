import 'package:bwa_cozy/pages/home_page.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: Stack(
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset('assets/images/splash_image.png')),
              Padding(
                padding: EdgeInsets.only(top: 50, left: 30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/images/cozy_logo.png')),
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Find Cozy House\nTo Stay and Happy',
                      style: blackTextStyle.copyWith(
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Stop membuang banyak waktu\npada tempat yang tidak habitable',
                      style: greyTextStyle.copyWith(fontSize: 16),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: 210,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()));
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(purpleColor),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(17))),
                        ),
                        child: Text(
                          'Explore Now',
                          style: whiteTextStyle.copyWith(fontSize: 18),
                        ),
                      ),
                      //RaisedButton - unused
                      //   RaisedButton(
                      //   shape: RoundedRectangleBorder(
                      //     borderRadius: BorderRadius.circular(17),
                      //   ),
                      //   color: purpleColor,

                      //   elevation: 0,
                      //   hoverElevation: 0,
                      //   focusElevation: 0,
                      //   highlightElevation: 0,

                      //   child: Text('Explore Now',
                      //   style: whiteTextStyle.copyWith(
                      //     fontSize: 18,
                      //     )
                      //   ),
                      //   onPressed: () {
                      //     Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()));
                      //   },

                      // ),
                    )
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
