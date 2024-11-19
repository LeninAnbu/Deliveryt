import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/dashboardcontroller/dashboardcontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      width: Screens.width(context),
      child: Stack(
        children: [
          Container(
            alignment: Alignment.topCenter,
            height: Screens.bodyheight(context) * 0.15,
            padding: EdgeInsets.only(top: 30),
            width: Screens.width(context),
            decoration: BoxDecoration(
                color: theme.primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )),
            child: Text("${S.current.TripListhead}",
                style: theme.textTheme.bodyMedium!.copyWith(
                    letterSpacing: 1,
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold)),
          ),
          //  Padding(
          //   padding: )
          Padding(
            padding:  EdgeInsets.symmetric(
              vertical:Screens.padingHeight(context)*0.08,
              horizontal: Screens.width(context)*0.1
              ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10)
              ),
              child: Container(
                // alignment: Alignment.center,
                width: Screens.width(context)*0.8,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                     boxShadow:[
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 6,
                      offset: Offset(0, 2)
                    )
                  ]
                ),
                
                child: IntrinsicHeight(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: Screens.width(context) * 0.20,
                        // height: Screens.padingHeight(context)*0.15,
                        padding: EdgeInsets.symmetric(
                            horizontal: Screens.width(context) * 0.02,
                            vertical: Screens.padingHeight(context) * 0.02),
                        decoration: BoxDecoration(
                            //  color: theme.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10)),
              
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "2",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                            SizedBox(
                              height: Screens.padingHeight(context) * 0.01,
                            ),
                            Text(
                              "${S.current.Nooftrip}", //No of Trip List
                              maxLines: 10,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 0.5,
                        ),
                      ),
                      Container(
                        width: Screens.width(context) * 0.20,
                        // height: Screens.padingHeight(context)*0.15,
                        padding: EdgeInsets.symmetric(
                            horizontal: Screens.width(context) * 0.02,
                            vertical: Screens.padingHeight(context) * 0.02),
                        decoration: BoxDecoration(
                            //  color: theme.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10)),
              
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "2",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                            SizedBox(
                              height: Screens.padingHeight(context) * 0.01,
                            ),
                            Text(
                              "${S.current.Nooftrip}", //No of Trip List
                              maxLines: 10,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20, bottom: 20),
                        child: VerticalDivider(
                          color: Colors.black,
                          thickness: 0.5,
                        ),
                      ),
                      Container(
                        width: Screens.width(context) * 0.20,
                        // height: Screens.padingHeight(context)*0.15,
                        padding: EdgeInsets.symmetric(
                            horizontal: Screens.width(context) * 0.02,
                            vertical: Screens.padingHeight(context) * 0.02),
                        decoration: BoxDecoration(
                            // color: theme.colorScheme.secondary,
                            borderRadius: BorderRadius.circular(10)),
              
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text(
                              "2",
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            )),
                            SizedBox(
                              height: Screens.padingHeight(context) * 0.01,
                            ),
                            Text(
                              "${S.current.Nooftrip}", //No of Trip List
                              maxLines: 10,
                              style: theme.textTheme.bodyMedium!.copyWith(
                                  letterSpacing: 1,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        SizedBox(
                                    height: Screens.padingHeight(context)*0.01,
                                  ),
      
                      Container(
                        child: Padding(
                           padding:  EdgeInsets.only(
                                      top:Screens.padingHeight(context)*0.21,
                                      left: Screens.width(context)*0.02,
                                      right:  Screens.width(context)*0.02,
                                      ),
                          child: Column(
                            children: [
                              Expanded(
                                child:
                              context.watch<dashboardcontroller>().isloading==true&&
                              context.read<dashboardcontroller>().dummylist.isEmpty?
                              Center(
                                child: CircularProgressIndicator(
                                  color: theme.primaryColor,
                                ),
                              ):
                              
                              ListView.builder(
                                itemCount: context.read<dashboardcontroller>().dummylist.length,
                                itemBuilder: (context,i){
                                  return Container(
                                    padding: EdgeInsets.symmetric(
                                                          // horizontal:
                                                          //     Screens.width(context) * 0.01,
                                                          vertical:
                                                              Screens.padingHeight(context) *
                                                                  0.001),
                              
                                    // color: Colors.amber,
                                    child: InkWell(
                                      onTap: (){
                                        setState(() {
                                          Get.toNamed(Constantroutes.tripdetail);
                                        });
                                      },
                                      child: Card(
                                        elevation: 2,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                                            horizontal:
                                                                Screens.width(context) * 0.01,
                                                            vertical:
                                                                Screens.padingHeight(context) *
                                                                    0.005),
                              
                                                                     decoration: BoxDecoration(
                                                                      color:Colors.white,
                                                                    borderRadius: BorderRadius.circular(10),
                                                                     boxShadow:[
                                                BoxShadow(
                                                      color: Colors.black26,
                                                      blurRadius: 10,
                                                      offset: Offset(0, 2)
                                                )
                                              ]
                                                                    // border: Border.all(
                                                                    //   color: Colors.black26
                                                                    // ),
                                                                    // color: theme.colorScheme.secondary.withOpacity(.5)
                                                              
                                                                  ),
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                              
                                            children: [
                                               SizedBox(
                                              height: Screens.padingHeight(context)*0.01,
                                            ),
                                            Row(
                                              children: [
                                                Container(
                                                  width: Screens.width(context)*0.2,
                                                padding: EdgeInsets.all(10),
                                                 decoration: BoxDecoration(
                                                  // color: Colors.amber
                                                  shape: BoxShape.circle,
                                                  color: theme.primaryColor.withOpacity(.1)
                              
                                                 ),
                                                 child:Image.asset("Asset/express-delivery.png",
                                                 width:Screens. width(context)*0.05,
                                                 height:Screens. padingHeight(context) *0.07,
                              
                                                 )
                                                ),
                                                SizedBox(
                                                  width: Screens.width(context)*0.01,
                                                ),
                                                Container(
                                              child: Column(
                                                children: [
                               Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: Screens.width(context)*0.3,
                                                    child: Text("${S.current.TripNumber}",//Trip Number
                                                    style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),),
                                                  ),
                                                  Text("${context.read<dashboardcontroller>().dummylist[i].number}",
                                                  style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),
                                                  ),
                                                ],
                                              )),
                              
                                              SizedBox(
                                              height: Screens.padingHeight(context)*0.01,
                                            ),
                                             Container(
                                              child: Row(
                                                children: [
                                                  Container(
                                                    width: Screens.width(context)*0.3,
                                                    child: Text("${S.current.NoofDeliveries}",//No of Deliveries
                                                    style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),
                                                    ),
                                                  ),
                                                  Container(
                                                    child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),),
                                                  ),
                                                  Text("${context.read<dashboardcontroller>().dummylist[i].delivery}",
                                                  style: theme.textTheme.bodyMedium!.copyWith(
                                                      letterSpacing: 1,
                                                      fontSize: 15
                                                    ),
                                                  ),
                              
                                                ],
                                              )),
                                                ],
                                              ),
                                            ),
                              
                                              ],
                                            ),
                                       SizedBox(
                                              height: Screens.padingHeight(context)*0.01,
                                            ),
                                          ],),
                                        ),
                                      ),)
                                      );
                                      }
                                      )
                                      ),
                            ],
                          ),
                        ),
                      ),
        ],
      ),
    );

//      Padding(
//              padding: const EdgeInsets.only(top: 80.0),
//               child: Container(
//                   width: Screens.width(context),
//                  padding: EdgeInsets.symmetric(
//                   horizontal: Screens.width(context)*0.03,
//                   vertical: Screens.padingHeight(context)*0.02
//                  ),
//                  decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(.9),
//                   borderRadius: BorderRadius.only(
//                     topLeft:Radius.circular(20) ,
//                   topRight: Radius.circular(20)
//                   )
//                  ),
//                   child: Column(
//                     children: [
//                       // Container(
//                       //   child: SpinKitFadingCircle(
//                       //     color: theme.primaryColor,

//                       //   ),
//                       // ),
//                       // SizedBox(
//                       //   height: Screens.padingHeight(context)*0.05,
//                       // ),
//                       IntrinsicHeight(
//                           child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                           children: [
//                             Container(
//                               width: Screens.width(context)*0.25,
//                               // height: Screens.padingHeight(context)*0.15,
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: Screens.width(context)*0.02,
//                                 vertical: Screens.padingHeight(context)*0.02
//                               ),
//                               decoration: BoxDecoration(
//                                 //  color: theme.colorScheme.secondary,
//                                 borderRadius: BorderRadius.circular(10)
//                               ),

//                               child:Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                    Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                                     letterSpacing: 1,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w500
//                                   ),)),
//                                    SizedBox(
//                                     height: Screens.padingHeight(context)*0.01,
//                                   ),
//                                   Text("${S.current.Nooftrip}",//No of Trip List
//                                   maxLines: 10,
//                                   style: theme.textTheme.bodyMedium!.copyWith(
//                                     letterSpacing: 1,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w500
//                                   ),
//                                   ),

//                                 ],
//                               ) ,
//                             ),
//                           Padding(
//                             padding:  EdgeInsets.only(
//                               top: 20,
//                               bottom: 20
//                             ),
//                             child: VerticalDivider(
//                               color: Colors.black,
//                               thickness: 0.5,
//                             ),
//                           ),
//                             Container(
//                               width: Screens.width(context)*0.25,
//                               // height: Screens.padingHeight(context)*0.15,
//                               padding: EdgeInsets.symmetric(
//                                 horizontal: Screens.width(context)*0.02,
//                                 vertical: Screens.padingHeight(context)*0.02
//                               ),
//                               decoration: BoxDecoration(
//                                 //  color: theme.colorScheme.secondary,
//                                 borderRadius: BorderRadius.circular(10)
//                               ),

//                               child:Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [

//                                   Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                                     letterSpacing: 1,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w500
//                                   ),)),
//                                   SizedBox(
//                                     height: Screens.padingHeight(context)*0.01,
//                                   ),
//                                   Text("${S.current.Nooftrip}",//No of Trip List
//                                   maxLines: 10,
//                                   style: theme.textTheme.bodyMedium!.copyWith(
//                                     letterSpacing: 1,
//                                     fontSize: 15,
//                                     fontWeight: FontWeight.w500
//                                   ),
//                                   ),

//                                 ],
//                               ) ,
//                             ),
//                            Padding(
//                             padding:  EdgeInsets.only(
//                               top: 20,
//                               bottom: 20
//                             ),
//                              child: VerticalDivider(
//                                color: Colors.black,
//                              thickness: 0.5,
//                              ),
//                            ),
//                              Container(
//                                width: Screens.width(context)*0.25,
//                                // height: Screens.padingHeight(context)*0.15,
//                                padding: EdgeInsets.symmetric(
//                                  horizontal: Screens.width(context)*0.02,
//                                  vertical: Screens.padingHeight(context)*0.02
//                                ),
//                                decoration: BoxDecoration(
//                                   // color: theme.colorScheme.secondary,
//                                  borderRadius: BorderRadius.circular(10)
//                                ),

//                                child:Column(
//                                  crossAxisAlignment: CrossAxisAlignment.start,
//                                  children: [

//                                    Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                                      letterSpacing: 1,
//                                      fontSize: 15,
//                                      fontWeight: FontWeight.w500
//                                    ),)),
//                                    SizedBox(
//                                      height: Screens.padingHeight(context)*0.01,
//                                    ),
//                                    Text("${S.current.Nooftrip}",//No of Trip List
//                                    maxLines: 10,
//                                    style: theme.textTheme.bodyMedium!.copyWith(
//                                      letterSpacing: 1,
//                                      fontSize: 15,
//                                      fontWeight: FontWeight.w500
//                                    ),
//                                    ),

//                                  ],
//                                ) ,
//                              ),
//                           ],
//                                                 ),
//                         ),
//                       // Row(
//                       //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       //   children: [

//                       //     Card(
//                       //       elevation: 2,
//                       //       shape:RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.circular(10)

//                       //       ),
//                       //       child: Container(
//                       //         width: Screens.width(context)*0.28,
//                       //         // height: Screens.padingHeight(context)*0.15,
//                       //         padding: EdgeInsets.symmetric(
//                       //           horizontal: Screens.width(context)*0.02,
//                       //           vertical: Screens.padingHeight(context)*0.02
//                       //         ),
//                       //         decoration: BoxDecoration(
//                       //            color: Colors.white,
//                       //           borderRadius: BorderRadius.circular(10),
//                       //           border: Border.all(
//                       //             color: Colors.black26
//                       //           )
//                       //         ),

//                       //         child:Column(
//                       //           crossAxisAlignment: CrossAxisAlignment.start,
//                       //           children: [
//                       //               Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),)),
//                       //             SizedBox(
//                       //               height: Screens.padingHeight(context)*0.02,
//                       //             ),
//                       //             Text("${S.current.Nooftrip}",//No of Trip List
//                       //             maxLines: 10,
//                       //             style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),
//                       //             ),

//                       //           ],
//                       //         ) ,
//                       //       ),
//                       //     ),
//                       //     Card(
//                       //       elevation: 2,
//                       //       shape:RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.circular(10)

//                       //       ),
//                       //       child: Container(
//                       //         width: Screens.width(context)*0.28,
//                       //         // height: Screens.padingHeight(context)*0.15,
//                       //         padding: EdgeInsets.symmetric(
//                       //           horizontal: Screens.width(context)*0.02,
//                       //           vertical: Screens.padingHeight(context)*0.02
//                       //         ),
//                       //         decoration: BoxDecoration(
//                       //            color: Colors.white,
//                       //           borderRadius: BorderRadius.circular(10),
//                       //            border: Border.all(
//                       //             color: Colors.black26
//                       //           )
//                       //         ),

//                       //         child:Column(
//                       //           crossAxisAlignment: CrossAxisAlignment.start,
//                       //           children: [

//                       //             Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),)),
//                       //              SizedBox(
//                       //               height: Screens.padingHeight(context)*0.02,
//                       //             ),
//                       //             Text("${S.current.Nooftrip}",//No of Trip List
//                       //             maxLines: 10,
//                       //             style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),
//                       //             ),

//                       //           ],
//                       //         ) ,
//                       //       ),
//                       //     ),
//                       //      Card(
//                       //       elevation: 2,
//                       //       shape:RoundedRectangleBorder(
//                       //         borderRadius: BorderRadius.circular(10)

//                       //       ),
//                       //       child: Container(
//                       //         width: Screens.width(context)*0.28,
//                       //         // height: Screens.padingHeight(context)*0.15,
//                       //         padding: EdgeInsets.symmetric(
//                       //           horizontal: Screens.width(context)*0.02,
//                       //           vertical: Screens.padingHeight(context)*0.02
//                       //         ),
//                       //         decoration: BoxDecoration(
//                       //           color: Colors.white,
//                       //           borderRadius: BorderRadius.circular(10),
//                       //            border: Border.all(
//                       //             color: Colors.black26
//                       //           )
//                       //         ),

//                       //         child:Column(
//                       //           crossAxisAlignment: CrossAxisAlignment.start,
//                       //           children: [

//                       //             Container(child: Text("2",style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),)),
//                       //             SizedBox(
//                       //               height: Screens.padingHeight(context)*0.02,
//                       //             ),
//                       //             Text("${S.current.Nooftrip}",//No of Trip List
//                       //             maxLines: 10,
//                       //             style: theme.textTheme.bodyMedium!.copyWith(
//                       //               letterSpacing: 1,
//                       //               fontSize: 15,
//                       //               fontWeight: FontWeight.w500
//                       //             ),
//                       //             ),

//                       //           ],
//                       //         ) ,
//                       //       ),
//                       //     ),
//                       //   ],
//                       // ),

//                       //  SizedBox(
//                       //               height: Screens.padingHeight(context)*0.01,
//                       //             ),
//                       // Container(
//                       //   padding: EdgeInsets.symmetric(horizontal: 10),
//                       //   alignment: Alignment.centerLeft,
//                       //   child: Divider(
//                       //     color: Colors.black,
//                       //   )
//                       //   // Text("Trips List:",
//                       //   // style: theme.textTheme.bodyMedium!.copyWith(
//                       //   //             letterSpacing: 1,
//                       //   //             fontSize: 18,
//                       //   //             fontWeight: FontWeight.w500
//                       //   //           ),
//                       //   // ),
//                       // ),
//                       SizedBox(
//                                     height: Screens.padingHeight(context)*0.01,
//                                   ),

//                       Expanded(
//                         child:
//                       context.watch<dashboardcontroller>().isloading==true&&
//                       context.read<dashboardcontroller>().dummylist.isEmpty?
//                       Center(
//                         child: CircularProgressIndicator(
//                           color: theme.primaryColor,
//                         ),
//                       ):

//                       ListView.builder(
//                         itemCount: context.read<dashboardcontroller>().dummylist.length,
//                         itemBuilder: (context,i){
//                           return Container(
//                             padding: EdgeInsets.symmetric(
//                                                   // horizontal:
//                                                   //     Screens.width(context) * 0.01,
//                                                   vertical:
//                                                       Screens.padingHeight(context) *
//                                                           0.002),

//                             // color: Colors.amber,
//                             child: InkWell(
//                               onTap: (){
//                                 setState(() {
//                                   Get.toNamed(Constantroutes.tripdetail);
//                                 });
//                               },
//                               child: Card(
//                                 elevation: 2,
//                                 color: Colors.white,
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10)
//                                 ),
//                                 child: Container(
//                                   padding: EdgeInsets.symmetric(
//                                                     horizontal:
//                                                         Screens.width(context) * 0.01,
//                                                     vertical:
//                                                         Screens.padingHeight(context) *
//                                                             0.01),

//                                                              decoration: BoxDecoration(
//                                                             borderRadius: BorderRadius.circular(10),
//                                                             // border: Border.all(
//                                                             //   color: Colors.black26
//                                                             // ),
//                                                             // color: theme.colorScheme.secondary.withOpacity(.5)
//                                                           ),
//                                   child: Column(
//                                     crossAxisAlignment: CrossAxisAlignment.start,

//                                     children: [
//                                        SizedBox(
//                                       height: Screens.padingHeight(context)*0.01,
//                                     ),
//                                     Row(
//                                       children: [
//                                         Container(
//                                           width: Screens.width(context)*0.2,
//                                         padding: EdgeInsets.all(10),
//                                          decoration: BoxDecoration(
//                                           // color: Colors.amber
//                                           shape: BoxShape.circle,
//                                           color: theme.primaryColor.withOpacity(.1)

//                                          ),
//                                          child:Image.asset("Asset/express-delivery.png",
//                                          width:Screens. width(context)*0.05,
//                                          height:Screens. padingHeight(context) *0.07,

//                                          )
//                                         ),
//                                         SizedBox(
//                                           width: Screens.width(context)*0.01,
//                                         ),
//                                         Container(
//                                       child: Column(
//                                         children: [
//  Container(
//                                       child: Row(
//                                         children: [
//                                           Container(
//                                             width: Screens.width(context)*0.3,
//                                             child: Text("${S.current.TripNumber}",//Trip Number
//                                             style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),
//                                             ),
//                                           ),
//                                           Container(
//                                             child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),),
//                                           ),
//                                           Text("${context.read<dashboardcontroller>().dummylist[i].number}",
//                                           style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),
//                                           ),
//                                         ],
//                                       )),

//                                       SizedBox(
//                                       height: Screens.padingHeight(context)*0.01,
//                                     ),
//                                      Container(
//                                       child: Row(
//                                         children: [
//                                           Container(
//                                             width: Screens.width(context)*0.3,
//                                             child: Text("${S.current.NoofDeliveries}",//No of Deliveries
//                                             style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),
//                                             ),
//                                           ),
//                                           Container(
//                                             child: Text(" : ",style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),),
//                                           ),
//                                           Text("${context.read<dashboardcontroller>().dummylist[i].delivery}",
//                                           style: theme.textTheme.bodyMedium!.copyWith(
//                                               letterSpacing: 1,
//                                               fontSize: 15
//                                             ),
//                                           ),

//                                         ],
//                                       )),
//                                         ],
//                                       ),
//                                     ),

//                                       ],
//                                     ),
//                                SizedBox(
//                                       height: Screens.padingHeight(context)*0.01,
//                                     ),
//                                   ],),
//                                 ),

//                               ),
//                             ),

//                           );
//                         }
//                         )
//                       )

//                     ],
//                   ),

//                 ),
//             );
  }
}
