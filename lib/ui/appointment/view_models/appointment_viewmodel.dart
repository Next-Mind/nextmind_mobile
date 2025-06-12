import 'package:get/get.dart';
import 'package:http/http.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository.dart';
import 'package:nextmind_mobile/data/repositories/appointment/appointment_repository_remote.dart';
import 'package:nextmind_mobile/domain/models/appointment/availability.dart';

class PsychologistController extends GetxController {
  Rx<DateTime> dayNow = Rx<DateTime>(DateTime.now());

  final RxList<Map<String, dynamic>> psicologos = <Map<String, dynamic>>[].obs;
  final RxList<Availability> availabilities = <Availability>[].obs;

  final List<Map<String, dynamic>> _todos = [
    {
      "id": 29,
      "nome": "Dr. Carlos Andrade",
      "crp": 123441,
      "avaliacao": 4.7,
      "formacao": "Psicanálise",
      "disponivel": false,
      "descricao": "...",
      "experiencia": "4",
      "posts": "3"
    },
    {
      "id": 30,
      "nome": "Dra. Camila Alves",
      "crp": 23442,
      "avaliacao": 4.9,
      "disponivel": true,
      "formacao": "Psicologia Infantil",
      "descricao": "...",
      "experiencia": "4",
      "posts": "6"
    },
  ];

  @override
  void onInit() {
    super.onInit();
    psicologos.assignAll(_todos);
  }

  void filtrarBemAvaliados() {
    psicologos.assignAll(_todos.where((p) => p["avaliacao"] >= 4.5));
  }

  void filtrarDisponiveis() {
    psicologos.assignAll(_todos.where((p) => p["disponivel"] == true));
  }

  void filtrarPorFormacao(String formacao) {
    psicologos.assignAll(_todos.where((p) => p["formacao"] == formacao));
  }

  void limpar() {
    psicologos.assignAll(_todos);
  }
}
