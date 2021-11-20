import 'package:flutter/material.dart';
import 'package:movies/constants.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key? key}) : super(key: key);

  @override
  _SideBarState createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.7,
      decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              offset: Offset(10, 10),
              blurRadius: 20,
              spreadRadius: 10,
            )
          ],
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(34),
          )),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 34,
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildMenuItem('Home', Icon(Icons.home), homeGradientButton, () { print('Home'); }),
              _buildMenuItem('Profil', Icon(Icons.account_circle_rounded), profilGradientButton, () { print('Profil'); }),
              _buildMenuItem('Paramètres', Icon(Icons.settings), settingsGradientButton, () { print('Paramètres'); }),
              const Spacer(),
              _buildMenuItem('Se déconnecter', const Icon(Icons.logout, color: Colors.red), logoutGradientButton, () { print('Disconnect'); }
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem(String _text, Icon _icon, LinearGradient _gradient, _onPressedFunction) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          child: Container(
            decoration: BoxDecoration(
                gradient: _gradient,
                borderRadius: const BorderRadius.all(
                    Radius.circular(12)
                )
            ),
            child: IconButton(
              icon: _icon,
              color: Colors.white,
              onPressed: _onPressedFunction,
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          _text,
          style: fontStyleMenuItem,
        ),
      ],
    );
  }
}
