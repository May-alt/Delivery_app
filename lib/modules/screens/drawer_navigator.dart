import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:Delevery_app/utils/reusibls_widgets/reus_widgrts.dart';
import 'package:flutter/material.dart';


Widget DrawerNavigator(context) => Drawer(
  child: Column(
    children: [
      DrawerHeader(
          child: Row(
           crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/images/logo1.png"),
                    radius: 50,
                  ),
                  SizedBox(width: 15.0,),
                  Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Delivery",
                      style: TextStyle(
                        color: CBlack,fontWeight: FontWeight.bold,fontSize: 25,letterSpacing: 0.8
                      ),
                      ),
                      Text(
                        "Tunis-Bizerte",
                        style: TextStyle(color: Colors.black45, fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
              CircleAvatar(
                radius: 15,
                child: IconButton(
                    icon: Icon(Icons.close,size: 12,color: CBlack),
                  onPressed: (){
                      Navigator.of(context).pop();
                  },
                ),
              ),
            ],
          )
      ),
      DrawerBuildItem(),
    ],
  ),
);

DrawerBuildItem() => SingleChildScrollView(
  child: Column(
    children: [
      reusListTile(
          leadIcon: Icons.person,
          text: "Profile",
          onTap: (){},
          onPressedIcons: (){},
        trailingIcon: Icons.arrow_circle_right_outlined
      ),
      reusListTile(
          leadIcon: Icons.notifications_active,
          text: "notifications",
          onTap: (){},
          onPressedIcons: (){},
          trailingIcon: Icons.arrow_circle_right_outlined
      ),
      reusListTile(
          leadIcon: Icons.favorite,
          text: "favorite",
          onTap: (){},
          onPressedIcons: (){},
          trailingIcon: Icons.arrow_circle_right_outlined
      ),

      Divider(height: 2,color: COrange,),

      SizedBox(height: 25,),

      reusListTile(
          leadIcon: Icons.lock,
          text: "Déconnexion",
          onTap: (){},

      ),

    ],
  ),
);