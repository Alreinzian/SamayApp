import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../pages/usuarios_page.dart';

class MenuButton {
  final VoidCallback onPressed;
  final IconData icon;

  MenuButton({required this.onPressed, required this.icon});
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<MenuButton> items = [
      MenuButton(
          icon: Icons.supervised_user_circle_rounded,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (BuildContext context) => UsuariosPage(),
              ),
            );
          }),
      MenuButton(
          icon: Icons.location_on_outlined,
          onPressed: () {
            print('Icon daniel');
          }),
      MenuButton(
          icon: Icons.camera_alt_outlined,
          onPressed: () {
            print('Icon message');
          }),
      MenuButton(
          icon: Icons.chat_outlined,
          onPressed: () {
            print('Icon niky');
          }),
    ];
    return ChangeNotifierProvider(
      create: (_) => new _MenuModel(),
      child: _MenuBackground(
        child: _MenuItems(menuItems: items),
      ),
    );
  }
}

class _MenuBackground extends StatelessWidget {
  final Widget child;
  const _MenuBackground({required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: child,
      width: 250,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(100)),
        boxShadow: <BoxShadow>[
          BoxShadow(color: Colors.black38, blurRadius: 10, spreadRadius: -5),
        ],
      ),
    );
  }
}

class _MenuItems extends StatelessWidget {
  const _MenuItems({required this.menuItems});
  final List<MenuButton> menuItems;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        menuItems.length,
        (i) => _MenuButtons(i, menuItems[i]),
      ),
    );
  }
}

class _MenuButtons extends StatelessWidget {
  final int index;
  final MenuButton item;
  const _MenuButtons(this.index, this.item);

  @override
  Widget build(BuildContext context) {
    final itemSelect = Provider.of<_MenuModel>(context).itemSelect;
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: () {
        Provider.of<_MenuModel>(context, listen: false).itemSelect = index;
        item.onPressed();
      },
      child: Container(
        child: Icon(
          item.icon,
          size: (itemSelect == index) ? 30 : 25,
          color: (itemSelect == index)
              ? Colors.black
              : Color.fromRGBO(163, 73, 164, 1),
        ),
      ),
    );
  }
}

class _MenuModel with ChangeNotifier {
  int _itemSelect = 0;

  int get itemSelect => this._itemSelect;

  set itemSelect(int index) {
    this._itemSelect = index;
    notifyListeners();
  }
}
