import 'package:dreamfarm/Model/CommunityScreenData.dart';
import 'package:dreamfarm/screens/Community/Posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Model/HomeScreenData.dart';

class CommunityPage extends StatelessWidget {
  const CommunityPage({super.key});

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
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/search');
              },
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              )),
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
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/icons/home_black.png",
                    height: 20.h,
                  ),
                  Text("Home",
                      style: GoogleFonts.roboto(
                          color: Colors.black, fontSize: 12.sp))
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/community_green.png",
                  height: 20.h,
                ),
                Text("Community",
                    style: GoogleFonts.roboto(
                        color: Colors.black, fontSize: 12.sp))
              ],
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
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Posts",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 24.sp),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: posts.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Post(
                      post: posts[index],
                    );
                  })
            ],
          ),
        ),
      ),
    );
  }
}
