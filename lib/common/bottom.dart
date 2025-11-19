import 'package:flutter/material.dart';
import 'package:siddhartha_bank_ui/features/homepage/presentation/views/homepage.dart';

class AnimatedBottomBar extends StatefulWidget {
  const AnimatedBottomBar({super.key});

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    //  Add your navigation logic here
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Homepage()),
        );
        break;
      case 1:
        Text("hello");
        break;
      case 2:
        // Navigator.push(context, MaterialPageRoute(builder: (_) => CalendarPage()));
        break;
      case 3:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      notchMargin: 8.0,
      elevation: 10.0,
      color:
          Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Theme.of(context).scaffoldBackgroundColor,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 65,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            _buildNavItem(Icons.home, "Home", 0),
            const SizedBox(width: 10),
            _buildNavItem(Icons.currency_rupee_rounded, "payments", 1),
            const SizedBox(width: 40), // Space for FAB
            _buildNavItem(
              Icons.production_quantity_limits_rounded,
              "Products",
              2,
            ),
            const SizedBox(width: 10),
            _buildNavItem(Icons.more_horiz, "More", 3),
          ],
        ),
      ),
    );
  }

  Widget _buildNavItem(IconData icon, String label, int index) {
    final isActive = _selectedIndex == index;

    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: TweenAnimationBuilder(
        duration: const Duration(milliseconds: 250),
        tween: ColorTween(
          begin: Colors.grey,
          end: isActive ? Colors.amberAccent : Colors.black,
        ),
        builder: (context, Color? color, _) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TweenAnimationBuilder<double>(
                duration: const Duration(milliseconds: 250),
                tween: Tween<double>(begin: 24, end: isActive ? 28 : 24),
                builder: (context, size, _) {
                  return Icon(icon, color: color, size: size);
                },
              ),
              const SizedBox(height: 4),
              AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 250),
                style: TextStyle(
                  color: color,
                  fontSize: isActive ? 13 : 11,
                  fontWeight: isActive ? FontWeight.bold : FontWeight.w500,
                ),
                child: Text(label),
              ),
            ],
          );
        },
      ),
    );
  }
}
