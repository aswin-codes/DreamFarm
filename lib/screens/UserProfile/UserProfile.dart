import 'package:dreamfarm/Model/HomeScreenData.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
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
              child: GestureDetector(
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/profile_green.png",
                  height: 20.h,
                ),
                Text("Profile",
                    style: GoogleFonts.roboto(
                        color: Colors.black, fontSize: 12.sp))
              ],
            ),
          ],
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40.h,
              ),
              Align(
                alignment: Alignment.center,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.r),
                  child: Image(
                    image: NetworkImage(profilePic),
                    height: 80.h,
                    width: 80.h,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                children: [
                  Text(
                    "Full Name : ",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Aswin Raaj P S",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Email : ",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "aswin@mail.com",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Phone Number :",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "+91 1234567890",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                children: [
                  Text(
                    "Gender :",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  Text(
                    "Male",
                    style: GoogleFonts.roboto(
                        fontSize: 16.sp, color: Colors.black),
                  )
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.green),
                      borderRadius: BorderRadius.circular(10.r)),
                  child: TextButton(
                    onPressed: () {},
                    child: Text("Change Password"),
                  ),
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Align(
                  alignment: Alignment.center,
                  child:
                      ElevatedButton(onPressed: () {}, child: Text("Log Out"))),
              SizedBox(
                height: 10.h,
              ),
              Text(
                "Premium Plans : ",
                style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w600, color: Colors.black),
              ),
              SizedBox(
                height: 10.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [Plans(name: "Quarterly", price: 100,),
                Plans(name: "Half Yearly", price: 150,),
                Plans(name: "Yearly", price: 200,)],
              )
            ],
          ),
        ),
      )),
    );
  }
}

class Plans extends StatelessWidget {
  Plans({super.key, required this.name, required this.price});
  String name;
  int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: const Color(0xFFDBF5E0),
      ),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text(name,
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w600, fontSize: 18.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.h,),
          Text("Rs ${price}",
            style: GoogleFonts.roboto(
              fontWeight: FontWeight.w400, fontSize: 16.sp,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 20.h,),
          ElevatedButton(onPressed: (){}, child: Text("BUY"))
        ],
      ),
    );
  }
}
