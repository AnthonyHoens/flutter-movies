import 'package:flutter/material.dart';
import 'package:movies/styles/constants.dart';

class MenuItemData {
  final String _name;
  final Icon _icon;
  final LinearGradient _gradient;

  MenuItemData(this._name, this._icon, this._gradient);

  LinearGradient get gradient => _gradient;

  Icon get icon => _icon;

  String get name => _name;
}

List<MenuItemData> menuItemsData = [
  MenuItemData(
      "Accueil",
      const Icon(Icons.home),
      homeGradientButton
  ),
  MenuItemData(
      "Paiement",
      const Icon(Icons.credit_card),
      paymentGradientButton
  ),
  MenuItemData(
      "Réglages",
      const Icon(Icons.settings),
      settingsGradientButton
  ),
  MenuItemData(
      "Se déconnecter",
      const Icon(Icons.logout, color: Colors.red),
      logoutGradientButton
  ),
];