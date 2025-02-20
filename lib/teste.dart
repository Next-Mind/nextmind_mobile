/*
*
*  ESTE ARQUIVO É APENAS PARA COMO IMPLEMENTAR O MENU
*  ELE SERVIRA APENAS DE EXEMPLO E SERÁ EXCLUIDO APÓS SEU USO
*
*/

import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/core/wigdets/custom_menu.dart';

class Teste extends StatefulWidget {
  const Teste({super.key});

  @override
  State<Teste> createState() => _TesteState();
}

class _TesteState extends State<Teste> {
  int _indiceAtual = 0;

  // Método que atualiza o índice ao tocar no item do menu
  void _onItemTapped(int index) {
    setState(() {
      _indiceAtual = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomMenu(
        currentIndex: _indiceAtual,
        onTap: _onItemTapped,
      ),
    );
  }
}
