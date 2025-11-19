import 'package:flutter/material.dart';

class AnimatedBottomBar extends StatefulWidget {
  final List<BottomBarItem> items;
  final int initialIndex;

  const AnimatedBottomBar({
    super.key,
    required this.items,
    this.initialIndex = 0,
  });

  @override
  State<AnimatedBottomBar> createState() => _AnimatedBottomBarState();
}

class _AnimatedBottomBarState extends State<AnimatedBottomBar> {
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _selectedIndex = widget.initialIndex;
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });

    widget.items[index].onTap?.call();
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
          children: List.generate(widget.items.length, (index) {
            final item = widget.items[index];
            return _buildNavItem(item.icon, item.label, index);
          }),
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

class BottomBarItem {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  BottomBarItem({required this.icon, required this.label, this.onTap});
}
