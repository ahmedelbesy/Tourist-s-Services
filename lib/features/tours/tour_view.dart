import 'package:carousel_slider/carousel_slider.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';
import 'details_tours_view.dart';

class ToursScreen extends StatelessWidget {

  @override

  String image= "assets/images/dahab.png";
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.14),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 30,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    }),
                Padding(
                  padding:  EdgeInsets.only(left: 130, top: height*0.07),
                  child: CustomText(
                    text: "Tours",
                    alignment: Alignment.center,
                    fontSize: 25,
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          _searchTextFormField(),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
            ),
            child: CustomText(
              text: "Choose Tour",
              color: primaryColor,
              fontSize: 18,
              fontweight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          CarouselSlider(
            items: [
              //1st Image of Slider
              Stack(
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (ctx)=>DetailsToursScreen(image: image,)));

                    },
                    child: Container(
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Blue_Hole_2005.JPG/1200px-Blue_Hole_2005.JPG"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: height * 0.14, left: 5, right: 5),
                      height: height*0.07,
                      child: CustomText(
                        text: "DAHAB",
                        alignment: Alignment.center,
                        color: primaryColor,
                        fontweight: FontWeight.bold,
                      )),
                ],
              ),

              //2nd Image of Slider
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://zahma.cairolive.com/wp-content/uploads/2014/01/beach-dahab-egypt-1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: height * 0.14, left: 5, right: 5),
                      height: 50,
                      child: CustomText(
                        text: "DAHAB",
                        alignment: Alignment.center,
                        color: primaryColor,
                        fontweight: FontWeight.bold,
                      )),
                ],
              ),

              //3rd Image of Slider
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://cdn.getyourguide.com/img/location/5441116cc37b7.jpeg/92.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: height * 0.14, left: 5, right: 5),
                      height: 50,
                      child: CustomText(
                        text: "DAHAB",
                        alignment: Alignment.center,
                        color: primaryColor,
                        fontweight: FontWeight.bold,
                      )),
                ],
              ),

              //4th Image of Slider
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmFzQFTqniYoYSM_C5DRa4L7ZK4TonXWa8VDljiyJWtIRG2C7p7HK8CmoRAmfGsmSJKic&usqp=CAU"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: height * 0.14, left: 5, right: 5),
                      height: 50,
                      child: CustomText(
                        text: "DAHAB",
                        alignment: Alignment.center,
                        color: primaryColor,
                        fontweight: FontWeight.bold,
                      )),
                ],
              ),

              //5th Image of Slider
              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://images.squarespace-cdn.com/content/v1/587004791b10e3c74e20f9f3/1487078490108-TXHT85IJF18W8K8UD0J5/ke17ZwdGBToddI8pDm48kDHPSfPanjkWqhH6pl6g5ph7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0mwONMR1ELp49Lyc52iWr5dNb1QJw9casjKdtTg1_-y4jz4ptJBmI9gQmbjSQnNGng/%23Dahab%23Coachhouse%23Blue%23Hole%23Egypt%23Sinai%23Lagoon%23Red%23Sea.JPG"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15),
                          topRight: Radius.circular(15),
                        ),
                      ),
                      margin: EdgeInsets.only(
                          top: height * 0.14, left: 5, right: 5),
                      height: 50,
                      child: CustomText(
                        text: "DAHAB",
                        alignment: Alignment.center,
                        color: primaryColor,
                        fontweight: FontWeight.bold,
                      )),
                ],
              ),
            ],

            //Slider Container properties
            options: CarouselOptions(
              height: height*0.2,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, bottom: 10),
            child: CustomText(
              text: "Recommended for you",
              color: primaryColor,
              fontSize: 18,
              fontweight: FontWeight.bold,
            ),
          ),
          Container(
            height: height*0.4,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: GridView.extent(
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              padding: EdgeInsets.only(left: 4,right: 4,),
              childAspectRatio: 15.0 / 13.0,
              maxCrossAxisExtent: 200,
              children: new List<Widget>.generate(6, (index) {
                return new GridTile(
                  child: Stack(
                    children: [
                      Container(
                        height: height*0.2,
                        child: Image.asset(
                          "$image",
                          fit: BoxFit.cover,
                        ),
                        color: Colors.amber,
                      ),
                      Container(
                          decoration: BoxDecoration(
                            color: Colors.white38,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                          ),
                          margin: EdgeInsets.only(
                              top: height * 0.149, left: 1, right: 1),
                          height: height * 0.05,
                          child: CustomText(
                            text: "DAHAB",
                            alignment: Alignment.center,
                            color: primaryColor,
                            fontweight: FontWeight.bold,
                          )),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  Widget _searchTextFormField() {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: TextFormField(
          decoration: InputDecoration(
              hintText: "Search",
              hintStyle: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide(color: Colors.grey, width: 1.0),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: primaryColor, width: 1.0),
                borderRadius: BorderRadius.circular(15),
              ),
              prefixIcon: Icon(
                Icons.search,
                size: 35,
                color: primaryColor,
              )),
        ),
      ),
    );
  }
}
