# 🎨 UI

Esta pasta contém os componentes visuais (_Widgets_) organizados por funcionalidades do projeto Flutter seguindo o padrão **MVVM**. A estrutura facilita a separação de responsabilidades e melhora a escalabilidade do código.

## 📂 Estrutura

A organização segue o padrão:

```
ui/
  {FEATURE_NAME}/
    {PAGE_NAME}/
      view_models/
      widgets/
```

### 📌 Exemplo:

```
ui/
  auth/
    login/
      view_models/
      widgets/
    logout/
      view_models/
      widgets/
```

## ⚡ Convenções

- 📌 Nomeie **FEATURE_NAME** e **PAGE_NAME** em **snake_case**.
- 🏷️ Utilize **PascalCase** para widgets e classes.
- 🔄 Separe a lógica de apresentação nos `view_models/`.
- 📦 Crie apenas widgets reutilizáveis dentro de `widgets/`.

## 🤝 Contribuição

Mantenha a estrutura organizada e respeite o padrão definido. 🚀
