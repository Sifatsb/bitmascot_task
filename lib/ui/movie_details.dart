import 'package:bitmascot_task/configure/app_colors.dart';
import 'package:bitmascot_task/configure/app_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../controller/controller_initializer.dart';

class MovieDetailsScreen extends StatefulWidget {
  const MovieDetailsScreen({Key? key}) : super(key: key);

  @override
  State<MovieDetailsScreen> createState() => _MovieDetailsScreenState();
}

class _MovieDetailsScreenState extends State<MovieDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('Movie Details'),
      ),
      backgroundColor: AppColors.backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Image border
                  child: Image.network(
                    dashBoardController.movieUrl.toString(),
                    fit: BoxFit.cover,
                    height: h*0.3,
                    width: w*0.9,
                  ),
                ),

                const SizedBox(height: 20,),
                const Text(AppStyle.loremIpsumText, style: AppStyle.title3,),

                const SizedBox(height: 30,),
                AppWidgets().button(context,
                  width: w*0.8,
                  color: Colors.green,
                  press: (){

                    var snackBar = const SnackBar(content: Text('Added to Wish List', style: TextStyle(color: AppColors.backgroundColor, fontSize: 18), textAlign: TextAlign.center,), backgroundColor: AppColors.primaryFontColor);
                    ScaffoldMessenger.of(context).showSnackBar(snackBar);

                  },
                  text: ('Add To Wish List'),),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
