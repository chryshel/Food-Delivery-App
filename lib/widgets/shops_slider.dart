import 'package:flutter/material.dart';
class ShopSlider extends StatefulWidget {
  const ShopSlider({Key? key}) : super(key: key);

  @override
  _ShopSliderState createState() => _ShopSliderState();
}

class _ShopSliderState extends State<ShopSlider> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
        itemCount: 5,
        itemBuilder: (context,index) {
          return _buildPageItem(index);
        }
    );
  }
}
Widget _buildPageItem(int index){
  return Stack(
    children: [
      Container(
        height: 220,
        margin: const EdgeInsets.only(left: 5,right: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: index.isEven ? Colors.lightBlue :Colors.lightGreen,
          image: const DecorationImage(
            image: AssetImage("assets/image/food0.png"),
            fit: BoxFit.fill
          )
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 150,
          margin: const EdgeInsets.only(left: 30,right: 30,bottom: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),

          ),
        ),
      ),
    ],
  );
}


