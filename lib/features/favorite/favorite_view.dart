
import 'package:egytologia/common_components/custom_button.dart';
import 'package:egytologia/common_components/custom_text.dart';
import 'package:flutter/material.dart';


import '../../public/constance.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
   
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(height * 0.15),
        child: AppBar(
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Row(
          //    mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Builder(
                  builder: (context) => IconButton(
                    icon: Icon(Icons.arrow_back,color: Colors.white,),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30,left: 100),
                  child: CustomText(
                    text: "Favourite",
                    fontSize: 25,
                    color: Colors.white,
                    fontweight: FontWeight.bold,
                    alignment: Alignment.center,
                  ),
                ),

              ],
            ),
          ),
          backgroundColor: primaryColor,
          elevation: 0,
          centerTitle: false,
          titleSpacing: 0,
          shape: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 60,

            margin: EdgeInsets.only(left: 20,right: 20,top: 20,bottom: 10),
            child: CustomButton(
              color: Colors.white,
              onPressed: (){},
              text: "+ Add more",
              fontSize: 20,


            ),
          ),

        ],
      ),
    );
  }
}
