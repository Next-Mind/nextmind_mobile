import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_detail_screen.dart';
import 'package:nextmind_mobile/ui/settings/screens/settings_option_screen/legal_info_item_screen.dart';
import 'package:nextmind_mobile/ui/settings/widgets/settings_item.dart';

class LegalInformationScreen extends StatefulWidget {
  const LegalInformationScreen({super.key});

  @override
  State<LegalInformationScreen> createState() => _LegalInformationScreenState();
}

class _LegalInformationScreenState extends State<LegalInformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Informações Legais".tr),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 15),
        children: [
          SizedBox(height: 32,),
          LegalInfoItem(
            title: "Informações Legais do Projeto".tr, 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Informações do Projeto", 
              content: "Este aplicativo foi desenvolvido com o propósito de facilitar a vida dos usuários através da tecnologia, respeitando as leis de proteção de dados e diretrizes de uso de software livre e proprietário.\n\nTodas as marcas, logos e conteúdos utilizados no aplicativo pertencem aos seus respectivos proprietários. O projeto respeita os princípios de transparência, responsabilidade e ética digital.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Informações Legais do Google", 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Informações do Google", 
              content: "Este aplicativo pode utilizar APIs e serviços fornecidos pelo Google, incluindo Firebase, Google Maps, Google Sign-In, entre outros.\n\nA utilização desses serviços está sujeita aos Termos de Serviço do Google e à Política de Privacidade do Google. O uso do aplicativo implica na aceitação dessas condições, bem como no cumprimento das práticas exigidas pelas APIs do Google.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Termos e Politica", 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Termos e Politica", 
              content: "Ao utilizar este aplicativo, você concorda com nossos Termos de Uso e Política de Privacidade.\n\nNosso compromisso é garantir a transparência no tratamento dos seus dados, respeitando sua privacidade e protegendo suas informações pessoais.\n\nRecomendamos a leitura completa dos termos e políticas para compreender seus direitos e deveres como usuário.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Termos de Uso", 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Termos de Uso", 
              content: "O uso deste aplicativo é permitido apenas para fins lícitos e conforme previsto nestes Termos de Uso.\n\nO usuário compromete-se a:\n- Utilizar o aplicativo de forma ética;\n- Não compartilhar conteúdos maliciosos ou ilegais;\n- Respeitar os demais usuários e as funcionalidades do sistema.\n\nO descumprimento destes termos poderá resultar em suspensão ou exclusão da conta.",
            )),
          ),
          SizedBox(height: 15,),
          LegalInfoItem(
            title: "Politica de Privacidade", 
            onTap: () => Get.to(() => const LegalDetailScreen(
            title: "Politica de Privacidade", 
              content: "Coletamos e utilizamos suas informações pessoais apenas quando necessário para fornecer e melhorar nossos serviços.\n\nSeus dados são tratados com segurança e não são compartilhados com terceiros sem sua permissão, exceto quando exigido por lei.\n\nVocê pode a qualquer momento solicitar a exclusão ou alteração dos seus dados, conforme previsto na Lei Geral de Proteção de Dados (LGPD).",
            )),
          ),
        ],
      ),
    );
  }
}