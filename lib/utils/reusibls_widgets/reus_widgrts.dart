
import 'package:Delevery_app/utils/colors/colors_app.dart';
import 'package:flutter/material.dart';
import 'package:animate_do/animate_do.dart';


NavToAndRemove(context, Widget) => Navigator.of(context).pushAndRemoveUntil(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
      (route) => false,
);

NavAndReplacement(context, Widget) =>Navigator.of(context).pushReplacement
      (MaterialPageRoute(builder: (context) {
        return Widget;
    }));

NavToAotherPage(context, Widget) => Navigator.of(context).push(
  MaterialPageRoute(
    builder: (context) {
      return Widget;
    },
  ),
);

Widget ReusPaddingAll({
  required Widget? child,
}) =>
    Padding(
      padding: const EdgeInsets.all(20.0),
      child: child,
    );


Widget reusAuthButtom({
required void Function()? onPressed,
  required String text,
}) => MaterialButton(
  onPressed: onPressed,
  height: 45,
  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 70),
  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  color: Colors.orange,
  child: Text(text,style: TextStyle(color: CBlack,fontSize: 18),),
);


Widget reusTextFormFiled({
  required TextInputType? keyboardType,
  required String? Function(String?)? validator,
  required Widget? prefixIcon,
    IconData? sufixicon,
  Color? iconsColor,
   void Function()? SufixPresVisibal,
  required TextEditingController? controller,
  required String? hintText,
  bool obscureText = false,
}) => TextFormField(
 // controller: ,
  keyboardType: keyboardType,
  validator:validator,
  controller: controller,
  obscureText:obscureText,
  decoration: InputDecoration(
    prefixIcon: prefixIcon,
        suffixIcon:IconButton(
        onPressed: SufixPresVisibal,
         icon: Icon(sufixicon,color:iconsColor ,),
    ),
    hintText:hintText,
    hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
    border: OutlineInputBorder(
      borderSide:BorderSide(color: Colors.grey.shade200,width: 2),
      borderRadius: BorderRadius.circular(10.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide:BorderSide(color: Colors.grey.shade200,width: 2),
      borderRadius: BorderRadius.circular(10.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide:BorderSide(color: Colors.grey.shade200,width: 2),
      borderRadius: BorderRadius.circular(10.0),
    ),
  ),
);



Widget reusTexyRowAuthNav({
  context,
  required String text,
  required String btntext,
  required void Function()? onPressed,
}) => FadeInUp(
  delay: Duration(milliseconds: 800),
  duration: Duration(milliseconds: 1500),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Text(text,
        style: TextStyle(color: Colors.black54,fontSize: 16),
      ),
      TextButton(
          onPressed: onPressed,
          child: Text(btntext,
            style: TextStyle(color: COrange,fontSize: 18,fontWeight: FontWeight.bold),
          )
      )
    ],
  ),
);



Widget reusButton({
  context,
  required void Function()? onTap,
  required String text,
}) =>InkWell(
  onTap: onTap,
  child: Container(
    height: 45,
    decoration: BoxDecoration(
      color:COrange,
      borderRadius: BorderRadius.circular(20.0),
    ),
    child: Center(
      child: Text(text,
        style: TextStyle(color: CWhite,fontWeight: FontWeight.bold,fontSize: 18),
      ),
    ),
  ),
);


Widget reusListTile({
  required String text,
  required void Function()? onTap,
  void Function()? onPressedIcons,
   IconData? trailingIcon,
  required IconData? leadIcon,
}) => ListTile(
  leading: Icon(leadIcon,color: COrange),
  title: Text(text,
    style: TextStyle(fontSize: 16,color: CBlack,fontWeight: FontWeight.bold),
  ),
  onTap: onTap,
  trailing: IconButton(
      onPressed: onPressedIcons,
      icon: Icon(trailingIcon,color: Colors.orange.shade200)
  ),
);