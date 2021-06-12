import 'package:bwa_cozy/models/city.dart';
import 'package:bwa_cozy/models/space.dart';
import 'package:bwa_cozy/models/tips.dart';
import 'package:bwa_cozy/theme.dart';
import 'package:bwa_cozy/widgets/city_card.dart';
import 'package:bwa_cozy/widgets/space_card.dart';
import 'package:bwa_cozy/widgets/tips_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: edge
          ),
          child: ListView(
            children: [
              //NOTE: TITLE/HEADER
              Padding(padding: EdgeInsets.only(left: edge),
                child: Text('Explore Now',
                style: blackTextStyle.copyWith(
                  fontSize: 24
                ),),
              ),

              SizedBox(
                height: 2,
              ),

              //NOTE: SUBTITLE
              Padding(padding: EdgeInsets.only(left: edge),
              child: Text('Mencari kosan yang cozy',
              style: greyTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 30,
              ),

              //NOTE: POPULAR CITIES
              Padding(padding: EdgeInsets.only(left: edge),
              child: Text('Popular Cities',
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

                    CityCard(
                      City(
                        id: 1,
                        name: 'Jakarta',
                        imageUrl: 'assets/images/city1.png',
                        isPopular: false,
                      )
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    CityCard(
                      City(
                        id: 2,
                        name: 'Bandung',
                        imageUrl: 'assets/images/city2.png',
                        isPopular: true,
                      )
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    CityCard(
                      City(
                        id: 3,
                        name: 'Surabaya',
                        imageUrl: 'assets/images/city3.png',
                        isPopular: false,
                      )
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    CityCard(
                      City(
                        id: 4,
                        name: 'Palembang',
                        imageUrl: 'assets/images/city4.png',
                        isPopular: false,
                      )
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    CityCard(
                      City(
                        id: 5,
                        name: 'Aceh',
                        imageUrl: 'assets/images/city5.png',
                        isPopular: false,
                      )
                    ),

                    SizedBox(
                      width: 20,
                    ),

                    CityCard(
                      City(
                        id: 6,
                        name: 'Bogor',
                        imageUrl: 'assets/images/city6.png',
                        isPopular: false,
                      )
                    ),

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
              Padding(padding: EdgeInsets.only(left: edge),
              child: Text('Recommended Space',
              style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge
                ),
                child: Column(
                  children: [
                    SpaceCard(
                      Space(
                        id: 1, 
                        imageUrl: 'assets/images/space1.png', 
                        rating: 4, 
                        name: "Kuretakeso Hott", 
                        price: 52, 
                        city: 'Bandung', 
                        country: 'Germany')
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    SpaceCard(
                      Space(
                        id: 2, 
                        imageUrl: 'assets/images/space2.png', 
                        rating: 5, 
                        name: "Roemah Nenek", 
                        price: 52, 
                        city: 'Bandung', 
                        country: 'Germany')
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    SpaceCard(
                      Space(
                        id: 3, 
                        imageUrl: 'assets/images/space3.png', 
                        rating: 3, 
                        name: "Darrling How", 
                        price: 52, 
                        city: 'Bandung', 
                        country: 'Germany')
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    SpaceCard(
                      Space(
                        id: 4, 
                        imageUrl: 'assets/images/space4.png', 
                        rating: 5, 
                        name: "Orang Crown", 
                        price: 52, 
                        city: 'Bandung', 
                        country: 'Germany')
                    ),

                    SizedBox(
                      height: 30,
                    ),

                    SpaceCard(
                      Space(
                        id: 5, 
                        imageUrl: 'assets/images/space5.png', 
                        rating: 3, 
                        name: "City of Cactus", 
                        price: 52, 
                        city: 'Bandung', 
                        country: 'Germany')
                    )
                  ],
                ),
              ),

              SizedBox(
                height: 30,
              ),

              Padding(padding: EdgeInsets.only(left: edge),
              child: Text('Tips & Guidance',
              style: regularTextStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),

              SizedBox(
                height: 16,
              ),

              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: edge
                ),
                child: Column(
                  children: [
                    TipsCard(
                      Tips(
                        id: 1, 
                        name: 'City Guideline', 
                        imageUrl: 'assets/images/tips1.png', 
                        date: '20 Apr')
                    ),

                     SizedBox(
                       height: 20,
                     ),

                    TipsCard(
                      Tips(
                        id: 2, 
                        name: 'Jakarta Fairship', 
                        imageUrl: 'assets/images/tips2.png', 
                        date: '11 Dec')
                    ),

                    SizedBox(
                      height: 50,
                    ),

                    Container(
                      height: 65,
                      width: MediaQuery.of(context).size.width - (2*edge),
                      margin: EdgeInsets.symmetric(
                        horizontal: edge
                      ),
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(255, 24, 24, 100), //(0xffF6F7F8)
                        borderRadius: BorderRadius.circular(23)
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}