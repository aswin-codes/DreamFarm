import 'package:dreamfarm/Model/CropInfo.dart';
import 'package:dreamfarm/Model/HomeScreenData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CropInfo extends StatelessWidget {
  const CropInfo({super.key});

  @override
  Widget build(BuildContext context) {
    final _cropInfo =
        ModalRoute.of(context)!.settings.arguments as CropInfoModel;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDBF5E0),
        title: Text(
          "DreamFarm",
          style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 24.sp),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50.r),
              child: const Image(image: NetworkImage(profilePic)),
            ),
          )
        ],
      ),
      bottomNavigationBar: Container(
        height: 60.h,
        decoration: BoxDecoration(color: const Color(0xFFDBF5E0), boxShadow: [
          BoxShadow(color: Colors.black.withOpacity(0.4), blurRadius: 8)
        ]),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/icons/home_green.png",
                    height: 20.h,
                  ),
                  Text("Home",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/community');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/icons/community_black.png",
                    height: 20.h,
                  ),
                  Text("Community",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/cropdoc-input');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/icons/cropdoc_black.png",
                    height: 20.h,
                  ),
                  Text("CropDoc",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp))
                ],
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/account');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/icons/profile_black.png",
                    height: 20.h,
                  ),
                  Text("Profile",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp))
                ],
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              _cropInfo.imageUrl,
              height: 200.h,
              width: MediaQuery.sizeOf(context).width,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                _cropInfo.name,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                _cropInfo.description,
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 15.sp),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Procedure",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 20.sp),
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: _cropInfo.procedures.length,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          _cropInfo.procedures[index].title,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        child: Text(
                          _cropInfo.procedures[index].despt,
                          style: GoogleFonts.roboto(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ],
                  );
                })
          ],
        ),
      )),
    );
  }
}
