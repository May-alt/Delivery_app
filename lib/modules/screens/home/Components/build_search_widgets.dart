import 'package:flutter/material.dart';







class BuildSearchWidgets extends StatefulWidget {
  const BuildSearchWidgets({Key? key}) : super(key: key);

  @override
  State<BuildSearchWidgets> createState() => _BuildSearchWidgetsState();
}

class _BuildSearchWidgetsState extends State<BuildSearchWidgets> {
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.only(top: 20.0),
     child: Container(
        height: 50,
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          children: [
            IconButton(
              onPressed: (){},
              icon: Icon(Icons.search,color: Colors.grey),
            ),
            VerticalDivider(color: Colors.grey,thickness: 1,endIndent: 08,indent: 08.0),

            Expanded(
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey,fontSize: 14),
                    hintText: "What would you like to eat?"
                ),
              ),
            ),
          ],
        ),
      ),
   );
  }
}
