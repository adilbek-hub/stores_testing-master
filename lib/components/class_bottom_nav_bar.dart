import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: BottomNavigationBar(
        selectedItemColor: const Color(0xffF58735),
        unselectedItemColor: const Color(0xff666666),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.view_cozy,
            ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.qr_code,
              ),
              label: 'Мой QR'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_basket,
              ),
              label: 'Корзина'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: 'Профиль'),
        ],
      ),
    );
  }
}
