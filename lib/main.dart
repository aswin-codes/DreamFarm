import 'package:dreamfarm/screens/Community/ChatScreen.dart';
import 'package:dreamfarm/screens/Community/CommunityPage.dart';
import 'package:dreamfarm/screens/Community/SearchScreen.dart';
import 'package:dreamfarm/screens/Community/UserProfile.dart';
import 'package:dreamfarm/screens/CropDoc/CropDocInput.dart';
import 'package:dreamfarm/screens/HomeScreen/CropInfo.dart';
import 'package:dreamfarm/screens/HomeScreen/HomePage.dart';
import 'package:dreamfarm/screens/UserProfile/UserProfile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//New Screen for Procedure for harvesting recommended crops 

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 667),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'DreamFarm',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.lightGreen,
            textTheme: Typography.englishLike2018.apply(fontSizeFactor: 1.sp),
          ),
          initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),
            '/cropinfo' : (context) => const CropInfo(),
            '/community' : (context) => const CommunityPage(),
            '/search' : (context) => const SearchScreen(),
            '/userprofile' : (context) => const UserProfilePage(),
            '/chat' : (context) => const ChatScreen(),
            '/cropdoc-input' : (context) => const CropDocInput(),
            '/account': (context) => const Account(),
          },
        );
      },
    );
  }
}
