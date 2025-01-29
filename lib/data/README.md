# 🗄️ Data - Projeto Flutter MVVM

A pasta **data** é responsável pelo gerenciamento e acesso aos dados do aplicativo. Ela contém os repositórios e serviços que interagem com fontes de dados externas e locais, garantindo uma separação clara da lógica de obtenção de dados.

## 📂 Estrutura

```
data/
  repositories/  # 📦 Implementações dos repositórios
    {ENTITY_NAME}/
      {ENTITY}_repository.dart  # Interface do repositório
      {ENTITY}_remote_repository.dart  # Implementação remota
      {ENTITY}_local_repository.dart  # Implementação local
  services/      # ⚡ Serviços de acesso a APIs e banco de dados
    api/         # 🌍 Comunicação com APIs externas
    local/       # 💾 Banco de dados local (SQLite, Hive, etc.)
```

### 📌 Descrição das pastas

- **`repositories/`** 📦

  - Contém implementações dos repositórios responsáveis por buscar e manipular os dados do domínio.
  - Segue o princípio da inversão de dependência utilizando interfaces.
  - Cada entidade tem sua própria subpasta (`user/`, `appointment/`, `product/`, etc.).

  **Exemplo de estrutura:**

  ```
  repositories/
    user/
      user_repository.dart
      user_remote_repository.dart
      user_local_repository.dart
    appointment/
      appointment_repository.dart
      appointment_remote_repository.dart
      appointment_local_repository.dart
  ```

- **`services/`** ⚡

  - Contém serviços responsáveis pela comunicação com APIs e bancos de dados locais.
  - Organizado em duas pastas: `api/` para chamadas externas e `local/` para persistência local.

  **Exemplo de estrutura:**

  ```
  services/
    api/
      user_api_service.dart
      appointment_api_service.dart
    local/
      user_local_service.dart
      appointment_local_service.dart
  ```

## ⚡ Convenções

- Utilize **snake_case** para nomeação de arquivos.
- Separe repositórios por entidade dentro de `repositories/`.
- Separe serviços conforme sua responsabilidade dentro de `services/`.
- Sempre utilize interfaces para abstração dos repositórios.

## 🤝 Contribuição

Mantenha a estrutura organizada e siga as diretrizes do projeto. 🚀
