import 'package:flutter/material.dart';
import 'package:green_nart_app/core/constants/color.dart';
import 'package:green_nart_app/core/constants/image_icons.dart';
import 'package:green_nart_app/core/styles/custom_svg_picture.dart';
import 'package:green_nart_app/features/Explore/page/Account_screen.dart';
import 'package:green_nart_app/features/Explore/page/beveragrs_screen.dart';
import 'package:green_nart_app/features/Explore/page/cart/main_cart.dart';
import 'package:green_nart_app/features/Explore/page/favorites.dart';
import 'package:green_nart_app/features/Explore/page/homeScreen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentindex = 0;
  List<Widget> screens = [
    Homescreen(),
    ExploreScreen(),
    MainCart(),
    Favorites(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.scaffoldBackground,
      body: screens[currentindex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Appcolor.scaffoldBackground,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF555E58).withValues(alpha: 0.2),
              offset: Offset(0, -5),
              blurRadius: 10,
            ),
          ],
        ),

        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.transparent,
          selectedItemColor: Appcolor.primary,
          unselectedItemColor: Appcolor.textSecondary,
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: CustomSvgPicture(
                path: Appicons.shopSvg,
                color: currentindex == 0
                    ? Appcolor.primary
                    : Appcolor.textMobileNumber,
              ),
              label: "Shop",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: Appicons.ExploreSvg),
              activeIcon: CustomSvgPicture(
                path: Appicons.ExploreSvg,
                color: Appcolor.primary,
              ),
              label: "Explore",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: Appicons.cartSvg),
              activeIcon: CustomSvgPicture(
                path: Appicons.cartSvg,
                color: Appcolor.primary,
              ),
              label: "cart",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: Appicons.favouriteSvg),
              activeIcon: CustomSvgPicture(
                path: Appicons.favouriteSvg,
                color: Appcolor.primary,
              ),
              label: "favorite",
            ),
            BottomNavigationBarItem(
              icon: CustomSvgPicture(path: Appicons.AccountSvg),
              activeIcon: CustomSvgPicture(
                path: Appicons.AccountSvg,
                color: Appcolor.primary,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
