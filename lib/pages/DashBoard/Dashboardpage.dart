

import 'package:WareSmart_Logistics/constant/constantroutes.dart';
import 'package:WareSmart_Logistics/constant/screen.dart';
import 'package:WareSmart_Logistics/controller/dashboardcontroller/dashboardcontroller.dart';
import 'package:WareSmart_Logistics/generated/l10n.dart';
import 'package:WareSmart_Logistics/pages/DashBoard/firstpage.dart';
import 'package:WareSmart_Logistics/pages/DashBoard/secondpage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
   final PageController pageController = PageController(initialPage: 0);
  late int _selectedIndex = 0;
   @override
   void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        context.read<dashboardcontroller>().init();
      
    });
   }
    List<Widget> pages = [
    firstpage(),
    secondpage(),
    
  ];
  @override
  Widget build(BuildContext context) {
    final theme =Theme.of(context);
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
         shape: const CircularNotchedRectangle(),
        // notchMargin: 2.0,
        // clipBehavior: Clip.antiAlias,
        child: SizedBox(
          // height: kBottomNavigationBarHeight,
          child: BottomNavigationBar(
            type: BottomNavigationBarType.shifting,
            backgroundColor: Colors.white,
            currentIndex: _selectedIndex,
            selectedItemColor: theme.primaryColor,
            iconSize: 30,
            unselectedItemColor: Colors.grey,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
                // pageController.jumpToPage(index);
              });
            },
            items:  [

              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                label: 'Home',
              ),
             
              BottomNavigationBarItem(
                icon: Icon(Icons.layers_outlined),
                label: 'Material Load',
              ),
             
            ],
          ),
        ),
        ),
      backgroundColor: Colors.white,
      // appBar: AppBar(//Trip List
      //   title: Text("${S.current.TripListhead}",style: theme.textTheme.bodyMedium!.copyWith(
      //                                 letterSpacing: 1,
      //                                 fontSize: 18,
      //                                 color: Colors.white
      //                                 )),
      //   centerTitle: true,
      // ),
      body: SafeArea(
        child:  pages[_selectedIndex]
      ),
    );
  }
}