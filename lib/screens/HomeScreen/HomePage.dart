import 'package:dreamfarm/Model/CropInfo.dart';
import 'package:dreamfarm/Model/HomeScreenData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
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
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    "Recommendations",
                    style: GoogleFonts.roboto(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 2, color: const Color(0xFF405F2C)),
                        borderRadius: BorderRadius.circular(5.r)),
                    margin: EdgeInsets.only(left: 10.w),
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 2.h),
                    child: Text(
                      "AI",
                      style: GoogleFonts.roboto(
                          fontSize: 14.sp, color: const Color(0xFF405F2C)),
                    ),
                  )
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: AI_Recommendations.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () => Navigator.pushNamed(context, '/cropinfo', arguments: cropInfo[index]),
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 10.h, horizontal: 5.w),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.r),
                              child: Image.network(
                                AI_Recommendations[index].imageURL,
                                height: 80.h,
                                width: 100.w,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  AI_Recommendations[index].name,
                                  style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w700),
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                SizedBox(
                                  width: 200.w,
                                  child: Text(
                                    AI_Recommendations[index].description,
                                    style: GoogleFonts.roboto(
                                      color: Colors.black,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                )
                              ],
                            ),
                            const Spacer(),
                            Text(
                              AI_Recommendations[index].sno.toString(),
                              style: GoogleFonts.roboto(
                                  fontSize: 16.sp, color: Colors.black),
                            ),
                            SizedBox(
                              width: 2.w,
                            )
                          ],
                        ),
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
