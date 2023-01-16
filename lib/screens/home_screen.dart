import 'package:flutter/material.dart';

import '../widegts/app_bar.dart';
import '../widegts/ltitle.dart';

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
    double h=  MediaQuery.of(context).size.height;
    double w=  MediaQuery.of(context).size.width;
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xFF10AB83),
        centerTitle: true,
        title: Text('Table Data',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      drawer: Drawer(
        backgroundColor: Colors.green.shade100,child: Column(
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
                            check=!check;

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
      ),
      backgroundColor: Colors.white,
      body:  Container(
        margin: EdgeInsets.all(10),
        height:h,
        width: w,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 1,
                width:w-40,
                color: Color(0xFF10AB83),
              ),//first row

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Container(
                    height: h-120,
                    width:1,
                    color: Color(0xFF10AB83),
                  ),//first column
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                              title("Dues"),
                              Container(
                                padding: EdgeInsets.all(12),
                                height: 50,
                                width: 280,
                                color: Colors.white,
                                child: Row(
                                  children: [
                                    Text("Previous Due",style: TextStyle(
                                        color: Colors.black,fontSize: 14,
                                        fontWeight: FontWeight.bold
                                    ),),
                                    SizedBox(width: 10,),
                                    Text("1 January 2022",style: TextStyle(
                                      color: Colors.black,fontSize: 14,

                                    ),),
                                  ],
                                ),
                              ),
                              title("Purchase"),
                              Container(
                                padding: EdgeInsets.all(12),
                                height: 100,
                                width: 280,
                                color: Colors.white,
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: [
                                          Text("Invioce Date",style: TextStyle(
                                            color: Colors.black,fontSize: 14,

                                          ),),
                                          SizedBox(width: 10,),
                                          Text("1 January 2022",style: TextStyle(
                                            color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold,

                                          ),),


                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        children: [
                                          Text("Invoice No",style: TextStyle(
                                            color: Colors.black,fontSize: 14,

                                          ),),
                                          SizedBox(width: 10,),
                                          Text("576873937",style: TextStyle(
                                            color: Colors.black,fontSize: 14, fontWeight: FontWeight.bold,

                                          ),),
                                        ],
                                      ),

                                    ],
                                  ),
                                ),
                              ),
                              Container(height: 2,
                                width: 280,
                                color: Color(0xFF10AB83),
                              ),
                              DataTable(
                                  columns: [
                                    DataColumn(label: Text("")),
                                    DataColumn(label: Text(""),
                                    )], rows: [DataRow(cells: [
                                DataCell(
                                    Column(children: [
                                      Text("Test product 1")
                                    ],)),
                                DataCell(
                                    Column(children: [
                                      Text("Test product 1")
                                    ],)),
                              ])])



                            ],
                          ),



                        ],
                      )

                    ],
                  ),
                  Container(
                    height: h-120,
                    width:1,
                    color: Color(0xFF10AB83),
                  ),



                ],)

            ],
          ),
        ),

      ),
    ));
  }
}
