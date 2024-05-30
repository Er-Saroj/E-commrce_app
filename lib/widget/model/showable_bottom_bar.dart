import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyButtombar extends StatefulWidget {
  final List<BottomNavigationBarItem> bottomNavigationBarItems;
  final List<Widget> pages;
  final double? height;
  final double? iconSize;
  final Color? backgroundColor;
  final Color? inactiveColor;
  final Color? activeColor;

  MyButtombar({
    required this.bottomNavigationBarItems,
    required this.pages,
    this.height,
    this.iconSize,
    this.backgroundColor,
    this.inactiveColor,
    this.activeColor,
  });

  @override
  _MynavigationbarState createState() => _MynavigationbarState();
}

class _MynavigationbarState extends State<MyButtombar> {
  late final List<GlobalKey<NavigatorState>> _navigatorKeys;

  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _navigatorKeys = List.generate(
      widget.pages.length,
      (index) => GlobalKey<NavigatorState>(),
    );
  }

  void _onTap(int index) {
    if (index == _currentIndex && _navigatorKeys[index].currentState != null) {
      _navigatorKeys[index].currentState!.popUntil((route) => route.isFirst);
    }
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        activeColor: widget.activeColor,
        inactiveColor: widget.inactiveColor ?? Colors.black,
        backgroundColor: widget.backgroundColor,
        height: widget.height ?? 70,
        iconSize: widget.iconSize ?? 40,
        items: widget.bottomNavigationBarItems,
        onTap: _onTap,
        currentIndex: _currentIndex,
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          navigatorKey: _navigatorKeys[index],
          builder: (context) => CupertinoPageScaffold(
            child: DefaultTextStyle(
              style: TextStyle(
                fontSize: _currentIndex == index ? 16 : 14,
                color: _currentIndex == index
                    ? widget.activeColor ?? Colors.blue
                    : widget.inactiveColor ?? Colors.grey,
              ),
              child: widget.pages[index],
            ),
          ),
        );
      },
    );
  }
}
