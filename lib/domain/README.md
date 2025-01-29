# 🏛️ Domain

A pasta **domain** contém a lógica central do aplicativo, incluindo os modelos de dados e os casos de uso. Segue o princípio da separação de responsabilidades, garantindo um código mais modular e testável.

## 📂 Estrutura

```
domain/
  models/        # 📦 Modelos de dados (separados por entidade)
  use_cases/     # ⚡ Lógica de negócio e regras do aplicativo
```

### 📌 Descrição das pastas

- **`models/`** 📦

  - Contém os modelos de dados do aplicativo.
  - Cada entidade tem sua própria subpasta (`user/`, `appointment/`, `product/`, etc.).
  - Utiliza **Freezed** para geração de código imutável e suporte a `copyWith` e `toJson`.

  **Exemplo de estrutura:**

  ```
  models/
    user/
      user.dart
    appointment/
      appointment.dart
    product/
      product.dart
  ```

- **`use_cases/`** ⚡

  - Define regras de negócio e manipulação de dados.
  - Cada caso de uso encapsula uma funcionalidade específica (ex: `LoginUser`, `Fetchappointments`).
  - Mantém a camada de apresentação desacoplada da lógica de domínio.

  **Exemplo de estrutura:**

  ```
  use_cases/
    user/
      login_user.dart
      register_user.dart
    appointment/
      fetch_appointments.dart
      cancel_appointment.dart
  ```

## ⚡ Convenções

- Utilize **PascalCase** para nomear classes e arquivos (`User`, `LoginUser`).
- Utilize **Freezed** para criação de modelos imutáveis.
- Separe casos de uso por entidade dentro de `use_cases/`.

## 🤝 Contribuição

Mantenha a estrutura organizada e siga as diretrizes do projeto. 🚀
