import 'package:appinio_swiper/appinio_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class DiscoveryScreen extends StatefulWidget {
  const DiscoveryScreen({Key? key}) : super(key: key);

  @override
  State<DiscoveryScreen> createState() => _DiscoveryScreenState();
}

class _DiscoveryScreenState extends State<DiscoveryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),title: Image.asset("assets/DESTINY.png",width: 150),centerTitle: true,backgroundColor: Colors.transparent,elevation: 0,),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        fixedColor: Colors.white,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(
              icon: Icon(Icons.directions_subway), label: "Discover"),
        ],
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xffC375F2), Color(0xff333333)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter),
        ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(5.w, 12.h, 5.w, 10.h),
          child: AppinioSwiper(
            cardsCount: 10,
            padding: EdgeInsetsDirectional.zero,
            cardsBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.center,
                child: Text(
                  index.toString(),
                  style: TextStyle(color: Colors.white),
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xff333333)),
              );
            },
          ),
        ),
      ),
    );
  }
}
