import 'dart:io';
import 'package:dreamfarm/Model/HomeScreenData.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CropDocInput extends StatefulWidget {
  const CropDocInput({super.key});

  @override
  State<CropDocInput> createState() => _CropDocInputState();
}

class _CropDocInputState extends State<CropDocInput> {
  File? _selectedImage;

  Future<void> _pickImage() async {
    // final picker = ImagePicker();
    // final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    // if (pickedFile != null) {
    //   setState(() {
    //     _selectedImage = File(pickedFile.path);
    //   });
    // }
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    if (result != null) {
      setState(() {
        _selectedImage = File(result.files.single.path!);
      });
    }
  }

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
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/');
                    },
                    child: Image.asset(
                      "assets/icons/home_black.png",
                      height: 20.h,
                    ),
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
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(
                  "assets/icons/cropdoc_green.png",
                  height: 20.h,
                ),
                Text("CropDoc",
                    style: GoogleFonts.roboto(
                        color: Colors.black, fontSize: 12.sp))
              ],
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Input an image of a crop infection to be analyzed:',
              style: GoogleFonts.roboto(color: Colors.black),
            ),
            SizedBox(height: 10),
            if (_selectedImage != null)
              Image.file(_selectedImage!, width: 200, height: 200)
            else
              IconButton(
                  onPressed: () {
                    _pickImage();
                  },
                  icon: Icon(
                    Icons.add_circle_outline_outlined,
                    color: Colors.grey,
                    size: 50.h,
                  )),
          ],
        ),
      ),
    );
  }
}
