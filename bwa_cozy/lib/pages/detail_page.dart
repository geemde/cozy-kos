import 'package:bwa_cozy/pages/error_page.dart';
import 'package:bwa_cozy/widgets/facility_item.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../theme.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    launchUrl(String url) async {
      if (await canLaunch(url)) {
        launch(url);
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ErrorPage()));
      }
    }

    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        bottom: false,
        child: Stack(
          children: [
            Image.asset(
              'assets/images/thumbnail.png',
              width: MediaQuery.of(context).size.width,
              height: 350,
              fit: BoxFit.cover,
            ),
            ListView(
              children: [
                SizedBox(
                  height: 328,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(20)),
                      color: whiteColor),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 30,
                      ),

                      //TITLE
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Kuretakeso Hotel',
                                  style: blackTextStyle.copyWith(fontSize: 22),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text.rich(
                                  TextSpan(
                                      text: '\$52',
                                      style: purpleTextStyle.copyWith(
                                          fontSize: 16),
                                      children: [
                                        TextSpan(
                                            text: ' / month',
                                            style: greyTextStyle.copyWith(
                                                fontSize: 16)),
                                      ]),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Image.asset(
                                  'assets/images/icon_star.png',
                                  width: 20,
                                  color: Color(0xff989BA1),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Main Facilities',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FacilityItem(
                                'assets/images/icon_kitchen.png', 2, 'kitchen'),
                            FacilityItem(
                                'assets/images/icon_bedroom.png', 3, 'bedroom'),
                            FacilityItem(
                                'assets/images/icon_cupboard.png', 3, 'lemari')
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      //MAIN FACILITIES
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Photos',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 12,
                      ),

                      Container(
                        height: 88,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            SizedBox(
                              width: edge,
                            ),
                            Image.asset('assets/images/photo1.png'),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/images/photo2.png'),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/images/photo3.png'),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/images/photo4.png'),
                            SizedBox(
                              width: 18,
                            ),
                            Image.asset('assets/images/photo5.png'),
                            SizedBox(
                              width: edge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: edge),
                        child: Text(
                          'Location',
                          style: regularTextStyle.copyWith(
                            fontSize: 16,
                          ),
                        ),
                      ),

                      SizedBox(
                        height: 6,
                      ),

                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: edge),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jln. Kappan Sukses No. 20,\nPalembang',
                              style: greyTextStyle,
                            ),
                            // InkWell(
                            //   onTap: () {},
                            //   child: Image.asset(
                            //     'assets/images/btn_map.png',
                            //     width: 40,
                            //   ),
                            // )
                            Container(
                              decoration: BoxDecoration(
                                  color: Color(0xffF6F7F8),
                                  shape: BoxShape.circle),
                              child: IconButton(
                                onPressed: () {
                                  launchUrl(
                                      'https://www.google.com/maps/place/Hotel+Kuretakeso+Kemang/@-6.2540778,106.8121421,17z/data=!3m1!4b1!4m8!3m7!1s0x2e69f19ee2e2db87:0x94eaf84746549e16!5m2!4m1!1i2!8m2!3d-6.2540788!4d106.8142967');
                                },
                                icon: Icon(Icons.location_pin),
                                color: greyColor,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: edge, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Image.asset(
                      'assets/images/btn_back.png',
                      width: 40,
                    ),
                  ),
                  Image.asset(
                    'assets/images/btn_wishlist.png',
                    width: 40,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: edge),
        height: 50,
        width: MediaQuery.of(context).size.width,

        //BookNow Button
        child: ElevatedButton(
          onPressed: () {
            launchUrl('wa.me/6281234567890');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(purpleColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(17))),
          ),
          child: Text(
            'Book Now',
            style: whiteTextStyle.copyWith(fontSize: 18),
          ),
        ),

        //RaisedButton - unused
        // child: RaisedButton(
        //   onPressed: () {},
        //   color: purpleColor,
        //   shape: RoundedRectangleBorder(
        //       borderRadius: BorderRadius.circular(17)),
        //   child: Text(
        //     'Book Now',
        //     style: whiteTextStyle.copyWith(fontSize: 18),
        //   ),
        // ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
