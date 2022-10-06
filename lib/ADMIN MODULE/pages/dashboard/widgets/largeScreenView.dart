import 'package:flutter/material.dart';

import 'cards.dart';

class LargeScreenView extends StatelessWidget {
  const LargeScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.width;
    var w = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          width: h*0.9,
          height: h,
          child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 0.7,
            crossAxisSpacing: 25,
            childAspectRatio: 0.7,
            mainAxisExtent: 150
          ),
            itemCount: 10,
            itemBuilder: (context, index) {
            return Wrap(children:[
              Cards(title: 'RS', value: '5432575', topColor: Colors.yellow, isActive: false, onTap: (){})
            ]);
          },),
        )
        // Cards(title: 'there', value: '7', topColor: Colors.yellow,  onTap: (){}, isActive: false, ),
        // SizedBox(
        //   width: _width / 64,
        // ),
        // Cards(title: 'there', value: '7', topColor: Colors.green,  onTap: (){}, isActive: false, ),
        // SizedBox(
        //   width: _width / 64,
        // ),
        // Cards(title: 'there', value: '7', topColor: Colors.purple,  onTap: (){}, isActive: false, ),
        // SizedBox(
        //   width: _width / 64,
        // ),
        // Cards(title: 'there', value: '7', topColor: Colors.red,  onTap: (){}, isActive: false, ),
        // SizedBox(
        //   width: _width / 64,
        // ),
        //  Cards(title: 'there', value: '7', topColor: Colors.indigo,  onTap: (){}, isActive: false, ),
        //  SizedBox(
        //    width: _width / 64,
        //  ),
        //  Cards(title: 'there', value: '7', topColor: Colors.orange,  onTap: (){}, isActive: false, ),
        //  SizedBox(
        //    width: _width / 64,
        //  ),
        //  Cards(title: 'there', value: '7', topColor: Colors.blue,  onTap: (){}, isActive: false, ),
        // SizedBox(
        //  width: _width / 64,
        //  ),
        //  Cards(title: 'there', value: '7', topColor: Colors.black,  onTap: (){}, isActive: false, ),
        //  SizedBox(
        //    width: _width / 64,
        //  ),


          ],
    );
  }
}
