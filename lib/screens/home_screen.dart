import 'package:flutter/material.dart';

import '../widegts/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String >list=[

      "Purchase",
    "Sell",
    "Stock / Inventory"

  ];
List<IconData>icon =[
  Icons.shopping_cart,
  Icons.shopping_bag,
  Icons.inventory,

  ];
  bool check =false;
  Color color =Color(0xFF10AB83);
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          appBar(context:context,text:"Demo Limited Company"),
          SizedBox(height: 10,),
          Expanded(
            child: Container(
              height: 200,
              width: double.maxFinite,
              child: ListView.builder(
                itemCount:3,
                  itemBuilder: (_,index){
                return ListTile(
                  leading: Icon(icon[index],size: 30,color:check? const Color(0xFF10AB83): Colors.grey,),
                  title:  Text(list[index],style: TextStyle(fontSize: 24,color:check?const Color(0xFF10AB83) : Colors.grey),),
                  trailing:  IconButton(
                    icon:  Icon(check?Icons.keyboard_arrow_up:Icons.keyboard_arrow_down,size: 30,color:check? const Color(0xFF10AB83): Colors.grey,),
                    onPressed: (){
                      setState((){
                        check=true;

                      });

                    },
                  ),
                  subtitle: check? Container(
                  height: 120,
                  width: double.maxFinite,
                  color: Colors.white,
                  child: Row(
                    children: [
                      Container(
                        height: 110,
                        width: 1,
                        color: const Color(0xFF10AB83),
                      ),
                      const SizedBox(width: 30,),
                      Column(
                        children: [
                          RichText(text: const TextSpan(

                              children: [
                                TextSpan(text: "Purchase List\n",style: TextStyle(fontSize:16,color: Color(0xff10AB83))),
                                TextSpan(text: "Order List\n",style: TextStyle(fontSize:16,color: Color(0xff10AB83))),
                                TextSpan(text: "Vat List\n",style: TextStyle(fontSize:16,color: Color(0xff10AB83))),
                                TextSpan(text: "Product List\n",style: TextStyle(fontSize:16,color: Color(0xff10AB83))),
                                TextSpan(text: "Purchase Report\n",style: TextStyle(fontSize:16,color: Color(0xff10AB83))),
                              ]
                          ))
                        ],
                      )
                    ],
                  ),
                ):null,


                );
              }),
            ),
          )
        ],

      ),
    ));
  }
}
