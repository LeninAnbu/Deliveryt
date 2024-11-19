
import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/tripdetailController/tripdetailscontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:syncfusion_flutter_signaturepad/signaturepad.dart';

class paymentdetail extends StatefulWidget {
  const paymentdetail({super.key});

  @override
  State<paymentdetail> createState() => _paymentdetailState();
}

class _paymentdetailState extends State<paymentdetail> {
  final signaturepadkey =GlobalKey<SfSignaturePadState>();
  List dummydata=[
    {
      "name":"Cash",
      "selected":false
    },
     {
      "name":"UPI",
      "selected":false
    }
  ];
  DateTime? currentBackPressTime;
  
  Future<bool> onbackpress() {
    DateTime now = DateTime.now();

    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      print("object");
      Get.offAllNamed(Constantroutes.deliveryconfirm);
      return Future.value(true);
    } else {
      return Future.value(true);
    }
  }
  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return PopScope(
       canPop: false,
      onPopInvoked: (bool didpop){
        if(didpop) return;
        onbackpress();
      },
      child: Scaffold(
        resizeToAvoidBottomInset:false ,
         backgroundColor: Colors.white,
        // appBar: AppBar(//Payment Information
        //   title: Text("${S.current.PaymentInfhead}",style: theme.textTheme.bodyMedium!.copyWith(
        //                               letterSpacing: 1,
        //                               fontSize: 18,
        //                               color: Colors.white
        //                               )),
        //   automaticallyImplyLeading: false,
        //   centerTitle: true,
        // ),
        body: SafeArea(
          child: Stack(
            children: [
              Container(
                alignment: Alignment.topCenter,
                height: Screens.bodyheight(context)*0.12,
                padding: EdgeInsets.only(top: 30),
                width: Screens.width(context),
                decoration: BoxDecoration(
                 color: theme.primaryColor,
                 borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
              ),
                child:Text("${S.current.PaymentInfhead}",style: theme.textTheme.bodyMedium!.copyWith(
                                        letterSpacing: 1,
                                        fontSize: 20,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                        )),
              ),
              Padding(
                padding:  EdgeInsets.only(
                                      top:Screens.padingHeight(context)*0.12,
                                      left: Screens.width(context)*0.01,
                                      right:  Screens.width(context)*0.01,
                                      ),
                child: Container(
                     width: Screens.width(context),
                 padding: EdgeInsets.symmetric(
                  horizontal: Screens.width(context)*0.02,
                  vertical: Screens.padingHeight(context)*0.02,
                  
                 ),
                 decoration: BoxDecoration(
                    color: Colors.white.withOpacity(.95),
                    borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(20) ,
                    topRight: Radius.circular(20)
                    )
                   ),
                 child: Column(
                  
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      
                  Container(
                    child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                            Container(
                              child: Text("${S.current.PaymentMode}",//Payment Mode
                        
                               style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      color: theme.primaryColor),),
                            ),
                            Padding(
                              padding: EdgeInsets.all(10),
                              child: Wrap(
                                
                                spacing: 10,
                                children: List.generate(
                                  dummydata.length
                                  ,(index) {
                                    return InputChip(
                                      label: Text(dummydata[index]["name"].toString()),
                                      labelPadding:EdgeInsets.symmetric(horizontal: 40),
                                      selected:dummydata[index]["selected"] ,
                                      deleteIcon:dummydata[index]["selected"] ==true? Icon(Icons.close):null,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(10)
                                      ),
                                      side: BorderSide(
                                        color: Colors.black
                                      ),
                                      onSelected: (val){
                                        setState(() {
                                          dummydata[index]["selected"] = !dummydata[index]["selected"];
                                        });
                                    
                                      },
                                      selectedColor: Colors.indigo.withOpacity(0.3),
                                     onDeleted: dummydata[index]["selected"] ==false?null: (){
                                    setState(() {
                                       dummydata[index]["selected"] =false;
                                    });
                                      
                                     },
                                      );
                                  }
                                ),
                              ),
                            ),
                              
                        
                          ],),
                        ),
                        SizedBox(
                    height: Screens.padingHeight(context)*0.01,
                  ),
                    Row(
                          children: [
                            Container(
                                width: Screens.width(context) * 0.2,
                                // color: Colors.amber,
                                child: Text(
                                  "${S.current.Cash}",//Cash
                                  style: theme.textTheme.bodyMedium!.copyWith(
                                      letterSpacing: 1,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500),
                                )),
                            Container(
                              child: Text(
                                " : ",
                                style: theme.textTheme.bodyMedium!.copyWith(
                                    letterSpacing: 1,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            Container(
                              // margin: const EdgeInsets.symmetric(
                              //     vertical: 10),
                                  
                              width: Screens.width(context) * 0.65,
                              decoration: const BoxDecoration(
                                  // color: theme.colorScheme.secondary,
                                  
                                  ),
                              child: TextFormField(
                                controller:
                                    context.read<tripdetailcontroller>().mycontroller[15],
                                cursorColor: theme.primaryColor,
                               
                                maxLines: 3,
                                minLines: 1,
                                keyboardType:TextInputType.number,
                                decoration: InputDecoration(
                                  enabled: true,
                                  fillColor: Colors.grey[200],
                                  filled: true,
                                  contentPadding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 10),
                                  labelText: "${S.current.Cash}",
                                  
                                  labelStyle: const TextStyle(
                                      fontSize: 15,
                                      letterSpacing: 1,
                                      fontWeight: FontWeight.w500),
                                  border: InputBorder.none,
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                            color: Colors.black26
                                          ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  focusedBorder: OutlineInputBorder(
                                   borderSide: BorderSide(
                                            color: Colors.black26
                                          ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                          ],
                                      ),
                  
                      ],
                    ),
                  ),
                      
                  Container(
                    child: Column(children: [
                      Card(
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: Container(
                                    
                            height:Screens.padingHeight(context)*0.18 ,
                            child: SfSignaturePad(
                              key: signaturepadkey,
                              maximumStrokeWidth: 5,
                              minimumStrokeWidth: 3,
                              strokeColor: Colors.black,
                              backgroundColor: Colors.white,
                            ),
                          ),
                                      ),
                                      Container(
                          alignment: Alignment.centerRight,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10)
                          ),
                          child: ElevatedButton(onPressed: (){
                            setState(() {
                              signaturepadkey.currentState?.clear();
                            });
                            
                          
                          }, 
                          style: ElevatedButton.styleFrom(
                            foregroundColor: Colors.red,
                            backgroundColor: Colors.red
                          ),//Reset
                          child: Text("${S.current.PaymentInfReset}",style: theme.textTheme.bodyMedium!
                                                            .copyWith(
                                                                fontSize: 15,
                                                                letterSpacing: 1,
                                                                color: Colors.white),)),
                                      ),
                   
                       SizedBox(
                    height: Screens.padingHeight(context)*0.01,
                  ),
                   SizedBox(
                        width: Screens.width(context),
                        height: Screens.padingHeight(context) * 0.06,
                        child: ElevatedButton(
                          onPressed: (){
                            // Get.toNamed(Constantroutes.paymentdetail);
                  
                          }, //Save
                          child: Text("${S.current.PaymentInfSave}",   style: theme.textTheme.bodyMedium!
                                                          .copyWith(
                                                              fontSize: 15,
                                                              letterSpacing: 1,
                                                              color: Colors.white),)),
                      ),
                    ],),
                  ),
                 
                      
                 ],),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}