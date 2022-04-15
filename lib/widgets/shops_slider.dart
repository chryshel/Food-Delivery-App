import 'package:flutter/material.dart';
import 'package:uncle_pops/styles/colors.dart';
import 'package:uncle_pops/styles/text_styles.dart';
import 'package:uncle_pops/widgets/reusable/store_summary.dart';
class ShopSlider extends StatefulWidget {
  const ShopSlider({Key? key}) : super(key: key);

  @override
  _ShopSliderState createState() => _ShopSliderState();
}

class _ShopSliderState extends State<ShopSlider> {
  PageController pageController = PageController(viewportFraction: 0.85);
  var _currPageValue = 0.0;
  double _scaleFactor = 0.0;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currPageValue = pageController.page!;
      });

    });

  }
  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

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

  Widget _buildPageItem(int index){
    Matrix4 matrix = Matrix4.identity();
    if(index == _currPageValue.floor()){
      var currScale = 1 - (_currPageValue - index) * ( 1 - _scaleFactor);
    }else if(index == _currPageValue.floor()+1){
      var currScale = _scaleFactor + ( _currPageValue - index + 1) * ( 1 - _scaleFactor);
    }
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
            height: 120,
            margin: const EdgeInsets.only(left: 20,right: 20,bottom: 30),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child:Padding(
              padding: const EdgeInsets.fromLTRB(15,15,15,8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  Text("Chinese Slide",style:kDefaultTitleTextStyle(context, Colors.black54),),
                  const SizedBox(height: 10,),
                  Row(
                    children:  [
                      Wrap(
                          children: List.generate(5, (index) => const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 15,
                          ))
                      ),
                      const SizedBox(width: 10,),
                      Text("4.5",style:kDefaultSubTitleTextStyle(context,Colors.black54 )),
                      const SizedBox(width: 10,),
                      Text("1287",style:kDefaultSubTitleTextStyle(context,Colors.black54 )),
                      const SizedBox(width: 10,),
                      Text("comments",style:kDefaultSubTitleTextStyle(context,Colors.black54 )),
                    ],
                  ),
                  const SizedBox(height: 20,),
                  const StoreSummary()
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}



