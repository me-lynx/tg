import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:tg/login/login_page.dart';

void main() => runApp(
      ResponsiveSizer(
        builder: (context, orientation, screentype) {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            getPages: [
              GetPage(name: "/bottomNav", page: () => LoginPage()),
            ],
            initialRoute: '/bottomNav',
          );
        },
      ),
    );
