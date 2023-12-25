import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:talet_samak/config/theme/app_theme.dart';
import 'package:talet_samak/features/home/cart_screen/presentation/screens/cart_screen.dart';
import 'package:talet_samak/features/home/favourites_screen/presentation/screens/favourites_screen.dart';
import 'package:talet_samak/features/home/home_screen/presentation/screens/home_screen.dart';
import 'package:talet_samak/features/home/orders_screen/presentation/screens/orders_Screen.dart';

class HomeTabsScreen extends StatefulWidget {
  const HomeTabsScreen({super.key});

  @override
  State<HomeTabsScreen> createState() => _HomeTabsScreenState();
}

class _HomeTabsScreenState extends State<HomeTabsScreen> {
  int _selectedIndex = 0;

  _selecatPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const HomeScreen();

    if (_selectedIndex == 1) {
      activePage = const OrdersScreen();
    } else if (_selectedIndex == 2) {
      activePage = const FavouritesScreen();
    } else if (_selectedIndex == 3) {
      activePage = const CartScreen();
    }

    return Scaffold(
      backgroundColor: secondaryBackground,
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: _buildBottomNavigation(context),
      ),
      body: SafeArea(child: activePage),
    );
  }

  BottomNavigationBar _buildBottomNavigation(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      elevation: 0,
      currentIndex: _selectedIndex,
      items: [
        _buildBottomNavigationItem('assets/icons/home_icon.svg', 0),
        _buildBottomNavigationItem('assets/icons/orders_icon.svg', 1),
        _buildBottomNavigationItem('assets/icons/fav_icon.svg', 2),
        _buildBottomNavigationItem('assets/icons/cart_icon.svg', 3),
      ],
      onTap: (index) {
        _selecatPage(index);
      },
    );
  }

  BottomNavigationBarItem _buildBottomNavigationItem(String asset, int index) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        asset,
        height: 24,
        colorFilter: const ColorFilter.mode(grayColor, BlendMode.srcIn),
        // Adjust the size as needed
      ),
      label: '',
      activeIcon: SvgPicture.asset(
        asset,
        height: 24,
        colorFilter: const ColorFilter.mode(primaryColor, BlendMode.srcIn),

        // Adjust the size as needed
      ),
    );
  }
}
