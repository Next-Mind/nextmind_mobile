# 🏗️ UI/Core - Projeto Flutter MVVM

A pasta **core** dentro de **UI** contém elementos essenciais e reutilizáveis para a interface do usuário, garantindo consistência e facilidade de manutenção.

## 📂 Estrutura

```
ui/
  core/
    localization/   # 🌍 Internacionalização (i18n)
    theme/         # 🎨 Configuração de tema, cores e fontes
    ui/           # 🧩 Widgets globais reutilizáveis (botões, cards, textfields)
```

### 📌 Descrição das pastas

- **`localization/`** 🌍

  - Gerencia a tradução e internacionalização do aplicativo.
  - Arquivos de localização (`.arb`, `.json`, etc.).
  - Métodos utilitários para seleção e mudança de idioma.

- **`theme/`** 🎨

  - Contém configurações globais de tema.
  - Definições de cores, tipografia e estilos reutilizáveis.
  - Implementação de _ThemeData_ para personalização do app.

- **`ui/`** 🧩
  - Conjunto de widgets globais reutilizáveis.
  - Inclui botões, cartões, campos de texto e outros componentes básicos.
  - Facilita a padronização e evita duplicação de código na interface.

## ⚡ Convenções

- Utilize **snake_case** para nomeação de arquivos e diretórios.
- Organize arquivos dentro das pastas conforme suas responsabilidades.
- Widgets globais devem ser altamente reutilizáveis e independentes de páginas específicas.

## 🤝 Contribuição

Mantenha a estrutura organizada e siga as diretrizes do projeto. 🚀
