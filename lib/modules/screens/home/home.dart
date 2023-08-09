import 'package:flutter/material.dart';
import 'package:Delevery_app/modules/screens/home/Components/build_search_widgets.dart';
import 'package:Delevery_app/modules/screens/home/Components/build_header_widgets.dart';
import 'package:Delevery_app/modules/screens/home/Components/build_all_food_widgets.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: SafeArea(
            child: Padding(
               padding: const EdgeInsets.all(20.0),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: [
              //     Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "Delivery",
              //           style: TextStyle(color: Colors.black45, fontSize: 14),
              //         ),
              //         Text(
              //           "Tunis,Bizerte Foodly",
              //           style: TextStyle(color: Colors.black, fontSize: 16),
              //         ),
              //       ],
              //     ),
              //
              //     CircleAvatar(
              //       radius: 12,
              //       backgroundColor: Colors.orange.shade100,
              //       child: Icon(
              //         Icons.notifications,
              //         color: Colors.black,
              //         size: 14,
              //       ),
              //     ),
              //   ],
              // ),
              //
              // SizedBox(
              //   height: 20.0,
              // ),

              BuildHeaderWidgets(),



              Padding(
                padding: const EdgeInsets.only(top: 14.0,),
                child: Text("What Would you like to order",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 0.9,
                    fontFamily: "Pacifico",
                  ),
                ),
              ),

              BuildSearchWidgets(),

              SizedBox(
                height: 30.0,
              ),

              BuildAllFoodWidgets(),


            ],
          ),
        )),
      ),
    );
  }
}
