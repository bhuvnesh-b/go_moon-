import 'package:flutter/material.dart';
import 'package:go_moon/widgets/custom_dropdown_button.dart';

class HomePage extends StatelessWidget {

  late double _deviceHeight, _deviceWidth;
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      // body: _astroImageWidget(),
      body: SafeArea(
        child: Container(
          height: _deviceHeight,
          width: _deviceWidth,
          padding: EdgeInsets.symmetric(horizontal: _deviceWidth*.08),
          child: Stack(
            children: [
              Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              _pageTitle(),
              _bookride(),
            ]
            ),
            Align(
              alignment: Alignment.centerRight,
              child: _astroImageWidget(),
            ),
            ]
          )),
    ),);
  }

  Widget _pageTitle() {
    return const Text("#GoMoon" , 
    style: TextStyle(color: Colors.white ,
    fontSize: 70,
    fontWeight: FontWeight.w800));
  }

  Widget _astroImageWidget() {
    return Container(
      height: _deviceHeight*.5,
      width: _deviceWidth*.5,
      decoration: const BoxDecoration(
        image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/astro_moon.png")),
      ),
    );
  }

  Widget _destinationDropDownWidget(){

      return CustomDropDownButtonClass(values: const [
      'bbs space station' , 
      'bbs fuel pump',
      ], 
      width: _deviceWidth);
}

  Widget _travellersinfo(){
      
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomDropDownButtonClass(values: const [
          '1' , 
          '2',
          '3',
          '4',
          ], 
          width: _deviceWidth*.4),
          CustomDropDownButtonClass(values: const [
          'economy' , 
          'buisseness',
          ], 
          width: _deviceWidth*.4),
          ],
      );
  }

  Widget _bookride(){
    return Container(
      height: _deviceHeight*.26,
      child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        _destinationDropDownWidget(),
        _travellersinfo(),
        _rideButton(),
      ]
    )
    );
  }
  Widget _rideButton(){
    return Container(
      padding: EdgeInsets.only(bottom: _deviceHeight*.01),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: _deviceWidth,
      child: MaterialButton(onPressed: () {},
        child: const Text("Book ride!", style: TextStyle(
        color: Colors.black,
        fontSize: 25,
      ),
      ),
    ),
    );
  }

}