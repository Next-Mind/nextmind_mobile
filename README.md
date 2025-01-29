# 📱 NextMind Mobile

Este repositório contém o código-fonte do app **NextMind**, desenvolvido para facilitar o acesso a profissionais de saúde mental, promover a troca de informações e oferecer suporte emocional à comunidade da Unicamp.

## 📌 Funcionalidades Principais

✅ **Autenticação de Usuários**

- Login e cadastro via Firebase
- Suporte a login por e-mail/senha e autenticação pelo Google

✅ **Agendamento de Consultas**

- Busca por profissionais de saúde mental com filtros
- Exibição de datas e horários disponíveis
- Reserva de horários com confirmação e cancelamento
- Histórico de agendamentos

✅ **Chat de Conversas**

- Comunicação direta em tempo real entre usuários e profissionais
- Push notifications para novas mensagens

✅ **Alertas de Consultas**

- Notificações automáticas para lembrar os usuários de consultas agendadas (24h e 1h antes)

✅ **Configurações de Segurança e Privacidade**

- Edição de informações pessoais e senha
- Configuração básica de visibilidade do perfil
- Termos de uso e política de privacidade

✅ **Usabilidade e Interface**

- Interface intuitiva e responsiva
- Compatibilidade com Android >= 6.0

## 🛠️ Tecnologias Utilizadas

- **Frontend:** Dart Flutter
- **Backend:** Firebase (Authentication, Firestore, Cloud Messaging), API REST PHP Desenvolvida por nós.
- **Notificações:** Firebase Cloud Messaging (FCM)
- **Segurança:** Comunicação via HTTPS, armazenamento seguro de dados sensíveis

## 📂 Estrutura do Projeto

```
nextmind_mobile/
  lib/
    data/         # Repositórios e serviços de API/local
    domain/       # Modelos de dados e casos de uso
    ui/           # Interface do usuário (organizada por funcionalidades)
  android/        # Configurações específicas do Android
  ios/            # Configurações específicas do iOS
  pubspec.yaml    # Dependências do projeto
```

## ✅ To Do List

- [ ] Implementar autenticação de usuários
- [ ] Implementar agendamento de consultas
- [ ] Implementar chat em tempo real

## 📜 Licença

Este projeto está sob a licença MIT. Para mais detalhes, consulte o arquivo **LICENSE**.

## 🤝 Contribuição

💡 Para sugestões e feedback, entre em contato conosco. 🚀
