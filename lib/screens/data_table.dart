import 'package:flutter/material.dart';

import '../widegts/ltitle.dart';

class TableData extends StatefulWidget {
  const TableData({Key? key}) : super(key: key);

  @override
  State<TableData> createState() => _TableDataState();
}

class _TableDataState extends State<TableData> {
  @override
  Widget build(BuildContext context) {
    double h=  MediaQuery.of(context).size.height;
    double w=  MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF10AB83),
        centerTitle: true,
        title: Text('Table Data',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
      ),
      body: Container(
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

    );
  }
}
