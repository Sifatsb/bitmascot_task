import 'package:bitmascot_task/configure/app_colors.dart';
import 'package:bitmascot_task/controller/controller_initializer.dart';
import 'package:bitmascot_task/ui/movie_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({Key? key}) : super(key: key);

  @override
  State<DashBoardScreen> createState() => _DashBoardScreenState();
}

class _DashBoardScreenState extends State<DashBoardScreen> {
  @override
  void initState() {
    super.initState();
    dashBoardController.fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text('avengers'),
      ),
      body: SafeArea(
        child: Obx(
          () => ListView.builder(
            shrinkWrap: true,
            itemCount: dashBoardController.data.length,
            itemBuilder: (BuildContext context, int index) {
              final item = dashBoardController.data[index];
              return dashBoardController.data.isEmpty
                  ? const Center(child: CircularProgressIndicator())
                  : Column(
                      children: [
                        ListTile(
                          leading: item.thumbnailUrl == null ? Image.asset('assets/images/thumbnail.jpg') : Image.network(item.thumbnailUrl ?? ''),
                          title: InkWell(
                            onTap: (){
                              dashBoardController.movieUrl.value = item.url ?? '';
                              Navigator.push(context, MaterialPageRoute(builder: (context) => const MovieDetailsScreen()));
                            },
                            child: Text(
                              item.title ?? 'Title',
                              style: AppStyle.title3,
                            ),
                          ),
                          subtitle: Text('ID: ${item.id}', style: AppStyle.title4,),
                          onTap: () {
                            // Handle item tap
                          },
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(left: 30.0, right: 30.0),
                          child: Divider(
                            color: AppColors.purple.withOpacity(0.5),
                            thickness: 3.5,
                          ),
                        ),
                      ],
                    );
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          dashBoardController.currentPage++;
          dashBoardController.fetchData();
        },
        child: const Icon(Icons.arrow_downward),
      ),
    );
  }
}
