import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:Delevery_app/bloc/app_cubit.dart';
import 'package:Delevery_app/modules/screens/drawer_navigator.dart';


class LyoutsMain extends StatefulWidget {
  const LyoutsMain({Key? key}) : super(key: key);

  @override
  State<LyoutsMain> createState() => _LyoutsMainState();
}

class _LyoutsMainState extends State<LyoutsMain> {




  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppState>(
      listener: (context, state) { },
      builder: (context, state) {

        var cubit = AppCubit.get(context);

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0.0,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Delevery-Food",
                  style: TextStyle(color: Colors.black, fontSize: 16),
                ),
                Text(
                  "Tunis-Bizerte",
                  style: TextStyle(color: Colors.black45, fontSize: 14),
                ),
              ],
            ),
            actions: [
            CircleAvatar(
                  radius: 12,
                  backgroundColor: Colors.orange.shade100,
                  child: Icon(
                    Icons.notifications,
                    color: Colors.black,
                    size: 14,
                  ),
                ),
              SizedBox(width: 10.0,),

            ],

          ),
          drawer: DrawerNavigator(context),

          body: cubit.Screens[cubit.currentindex],

          bottomNavigationBar:Container(
            height: 50,
            // color: Colors.amber,
            margin: EdgeInsets.all(10),
            child: GNav(
                tabBorderRadius: 15,
                tabActiveBorder: Border.all(color:Colors.white, width: 1),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                tabBackgroundColor: Colors.deepOrange.withOpacity(0.2),// navigation bar padding
                gap: 8, // the tab button gap between icon and text
                activeColor:Colors.orange, // selected icon and text color
                iconSize: 30, // tab button icon size
                color:Colors.grey,
                onTabChange: (index){
                  cubit.changeNavBar(index);
                },
                tabs: [
                  GButton(icon: CupertinoIcons.home, text: 'Home',),
                  GButton(icon: CupertinoIcons.cart, text: 'Cart',),
                  GButton(icon: CupertinoIcons.heart_fill, text: 'Likes',),
                  GButton(icon: CupertinoIcons.location_solid, text: 'Location',),
                ]),
          ),
        );

      },
    );
  }
}
