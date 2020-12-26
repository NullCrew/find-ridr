import 'package:findridr/rider_icons.dart';
import 'package:findridr/views/event_view.dart';
import 'package:findridr/views/group_view.dart';
import 'package:findridr/views/home_view.dart';
import 'package:findridr/views/profile_view.dart';
import 'package:findridr/views/ride_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:preload_page_view/preload_page_view.dart';

List<BottomNavigationBarItem> navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Rider.sports,color: Colors.black,size: 28,),
    label: '  Ride',
  ),
  BottomNavigationBarItem(
    icon: Icon(Rider.group,color: Colors.black,size: 32,),
    label: 'Groups',
  ),
  BottomNavigationBarItem(
    icon: Icon(Rider.home,color: Colors.black,size: 32,),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(FontAwesomeIcons.flagCheckered,color: Colors.black,size: 32,),
    label: 'Events',
  ),
  BottomNavigationBarItem(
    icon: Icon(Rider.rider,color: Colors.black,size: 32,),
    label: 'Profile',
  ),
];

// ignore: non_constant_identifier_names
List <Widget>views = [
  RideView(),
  GroupView(),
  HomeView(),
  EventView(),
  ProfileView(),
];

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _currentIndex = 2;

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });

    pageController.animateToPage(
      index,
      duration: Duration(
        milliseconds: 50,
      ),
      curve: Curves.elasticOut
    );
  }

  Widget navBar(){
    return Container(
      height: 80,
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.grey.shade400,offset: Offset(0,-3),blurRadius: 8,spreadRadius: 0.5)
          ]
      ),
      child: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: onTabTapped,
        showUnselectedLabels: false,
        items: navBarItems,
        selectedItemColor: Colors.black,
        selectedFontSize: 18,
        selectedLabelStyle: GoogleFonts.raleway(color: Colors.black,fontWeight: FontWeight.w700),
      ),
    );
  }

  PreloadPageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PreloadPageController(initialPage: 2);
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          child: PreloadPageView.builder(
              controller: pageController,
              physics: AlwaysScrollableScrollPhysics(),
              preloadPagesCount: 5,
              itemCount: views.length,
              itemBuilder: (BuildContext context,int position){
                return views[position];
              },
              onPageChanged: (int index) {
                setState(() {
                  _currentIndex = index;
                });
              }),
        ),
        bottomNavigationBar: navBar());
  }
}