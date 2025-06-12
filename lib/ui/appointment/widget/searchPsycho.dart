import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/appointment/view_models/appointment_viewmodel.dart';
import 'package:nextmind_mobile/ui/appointment/widget/profilePsycho.dart';

class Searchpsycho extends StatelessWidget {
  Searchpsycho({super.key});

  final PsychologistController controller = Get.put(PsychologistController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          topoComBorda(),
          const SizedBox(height: 20),
          Expanded(child: buildList()),
        ],
      ),
    );
  }

  Widget topoComBorda() {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 15.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 2.0,
              ),
            ),
          ),
          child: const Text(
            "Search Psychologist",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 20),
        Wrap(
          spacing: 10,
          children: [
            ElevatedButton(
              onPressed: controller.filtrarBemAvaliados,
              child:
                  const Text("Bem avaliados", style: TextStyle(fontSize: 12)),
            ),
            ElevatedButton(
              onPressed: controller.filtrarDisponiveis,
              child: const Text("Disponíveis", style: TextStyle(fontSize: 12)),
            ),
            ElevatedButton(
              onPressed: () {
                controller.filtrarPorFormacao("Psicologia Clínica");
              },
              child: const Text("Formação", style: TextStyle(fontSize: 12)),
            ),
          ],
        ),
      ],
    );
  }

  Widget buildList() {
    return Obx(() {
      final lista = controller.psicologos;

      return ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        itemCount: lista.length,
        itemBuilder: (context, index) {
          final psicologo = lista[index];
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              elevation: 2,
              child: ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                leading: const CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
                title: Text(
                  psicologo["nome"],
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  "Avaliação: ${psicologo["avaliacao"] ?? 'N/A'}",
                  style: const TextStyle(color: Colors.grey),
                ),
                onTap: () {
                  Get.to(() => DetalhesPsicologo(psicologo: psicologo));
                },
              ),
            ),
          );
        },
      );
    });
  }
}
