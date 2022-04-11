import 'package:flutter/material.dart';
import 'package:uncle_pops/styles/text_styles.dart';
import 'package:uncle_pops/utils/colors.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  _MainFoodPageState createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding:  const EdgeInsets.only(left: 20,right: 20),
                  child: Column(
                    children:  [
                      Text("Country",style: kDefaultTitleTextStyle(context,AppColors.mainColor),),
                      Row(
                        children: [
                          Text("City",style: kDefaultSubTitleTextStyle(context, Colors.black54),),
                          const Icon(Icons.arrow_drop_down),
                    
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding:  const EdgeInsets.only(left: 20,right: 20),
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: AppColors.mainColor
                    ),
                    child: const Center(
                        child: Icon(Icons.search,color: Colors.white,)),
                  ),
                )
              ],
            ),
          ],
        )
      ),
    );
  }
}
