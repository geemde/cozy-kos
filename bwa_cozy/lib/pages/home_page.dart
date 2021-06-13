import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/bottom_navbar_item.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  // var spaceProvider = Provider.of<SpaceProvider>(context);
  // spaceProvider.getRecommendedSpaces();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
          bottom: false,
          child: ListView(
            children: [
              SizedBox(
                height: edge,
              ),
              //NOTE: TITLE/HEADER
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Explore Now',
                  style: blackTextStyle.copyWith(fontSize: 24),
                ),
              ),

              SizedBox(
                height: 2,
              ),

              //NOTE: SUBTITLE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Mencari kosan yang cozy',
                  style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              //NOTE: POPULAR CITIES
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Popular Cities',
                  style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              //NOTE: CITIES-STACK CARD
              Container(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 24,
                    ),
                    CityCard(City(
                      id: 1,
                      name: 'Jakarta',
                      imageUrl: 'assets/images/city1.png',
                      isPopular: false,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                      id: 2,
                      name: 'Bandung',
                      imageUrl: 'assets/images/city2.png',
                      isPopular: true,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                      id: 3,
                      name: 'Surabaya',
                      imageUrl: 'assets/images/city3.png',
                      isPopular: false,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                      id: 4,
                      name: 'Palembang',
                      imageUrl: 'assets/images/city4.png',
                      isPopular: false,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                      id: 5,
                      name: 'Aceh',
                      imageUrl: 'assets/images/city5.png',
                      isPopular: false,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                    CityCard(City(
                      id: 6,
                      name: 'Bogor',
                      imageUrl: 'assets/images/city6.png',
                      isPopular: false,
                    )),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),

              //NOTE: RECOMMENDED SPACE
              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Recommended Space',
                  style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    SpaceCard(Space(
                        id: 1,
                        imageUrl: 'assets/images/space1.png',
                        rating: 4,
                        name: "Kuretakeso Hotel",
                        price: 52,
                        city: 'Bandung',
                        country: 'Germany')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 2,
                        imageUrl: 'assets/images/space2.png',
                        rating: 5,
                        name: "Roemah Nenek",
                        price: 11,
                        city: 'Seattle',
                        country: 'Bogor')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 3,
                        imageUrl: 'assets/images/space3.png',
                        rating: 3,
                        name: "Darrling How",
                        price: 20,
                        city: 'Jakarta',
                        country: 'Indonesia')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 4,
                        imageUrl: 'assets/images/space4.png',
                        rating: 5,
                        name: "Orang Crown",
                        price: 552,
                        city: 'Halla',
                        country: 'Sumatera')),
                    SizedBox(
                      height: 30,
                    ),
                    SpaceCard(Space(
                        id: 5,
                        imageUrl: 'assets/images/space5.png',
                        rating: 3,
                        name: "City of Cactus",
                        price: 20,
                        city: 'Jakarta',
                        country: 'Indonesia'))
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Padding(
                padding: EdgeInsets.only(left: edge),
                child: Text(
                  'Tips & Guidance',
                  style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: EdgeInsets.symmetric(horizontal: edge),
                child: Column(
                  children: [
                    TipsCard(Tips(
                        id: 1,
                        name: 'City Guideline',
                        imageUrl: 'assets/images/tips1.png',
                        date: '20 Apr')),
                    SizedBox(
                      height: 20,
                    ),
                    TipsCard(Tips(
                        id: 2,
                        name: 'Jakarta Fairship',
                        imageUrl: 'assets/images/tips2.png',
                        date: '11 Dec')),
                  ],
                ),
              ),

              SizedBox(
                height: 60 + edge,
              ),
            ],
          )),
      floatingActionButton: Container(
        height: 65,
        width: MediaQuery.of(context).size.width - (2 * edge),
        margin: EdgeInsets.symmetric(horizontal: edge),
        decoration: BoxDecoration(
            color: Color(0xffF6F7F8), borderRadius: BorderRadius.circular(23)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_home.png',
              isActive: true,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_mail.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_card.png',
              isActive: false,
            ),
            BottomNavbarItem(
              imageUrl: 'assets/images/icon_fav.png',
              isActive: false,
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
