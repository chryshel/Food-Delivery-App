import 'package:flutter/material.dart';
import 'package:uncle_pops/styles/colors.dart';
import 'package:uncle_pops/styles/text_styles.dart';

class StoreSummary extends StatefulWidget {
  final String? status;
  final String? distance;
  final String? maxDuration;

  const StoreSummary({Key? key, this.status, this.distance, this.maxDuration}) : super(key: key);

  @override
  State<StoreSummary> createState() => _StoreSummaryState();
}

class _StoreSummaryState extends State<StoreSummary> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children:  [
              const Icon(Icons.circle,color: AppColors.iconColor1,),
              const SizedBox(width: 5,),
              Text("Normal",style:kDefaultSubTitleTextStyle(context,Colors.black26))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children:  [
              const Icon(Icons.location_on,color: AppColors.iconColor2),
              const SizedBox(width: 5),
              Text("1.7km",style:kDefaultSubTitleTextStyle(context,Colors.black26 ))
            ],
          ),
        ),
        Expanded(
          child: Row(
            children:  [
              const Icon(Icons.access_time,color:Colors.brown,),
              const SizedBox(width: 5,),
              Text("32min",style:kDefaultSubTitleTextStyle(context,Colors.black26 ))
            ],
          ),
        ),
      ],
    );
  }
}
