# 🧪 TESTES

Este diretório contém todos os testes do projeto. Certifique-se de seguir a mesma estrutura de pastas da `lib/` para manter a organização e facilitar a manutenção do código.

## 📂 Estrutura de Diretórios

A estrutura de pastas deve espelhar a organização dentro da `lib/`, por exemplo:

```
lib/
 ├── ui/
 │   ├── auth/
 │   │   ├── view_models/
 │   │   ├── widgets/

test/
 ├── ui/
 │   ├── auth/
 │   │   ├── view_models/
 │   │   ├── widgets/
```

## 🚀 Como Rodar os Testes

Para executar todos os testes do projeto, utilize o comando:

```sh
flutter test
```

Se quiser rodar um teste específico, use:

```sh
flutter test test/ui/auth/view_models/login_test.dart
```

## 📝 Boas Práticas para Testes

- **Nomeie os arquivos de teste** com o sufixo `_test.dart`.
- **Use `group()`** para organizar testes semelhantes.
- **Cubra os principais fluxos do app** (unidade, widget e integração).
- **Mantenha os testes curtos e legíveis**.
- **Evite dependências desnecessárias**.

## 📚 Material de Estudo

Para mais informações sobre testes no Flutter, consulte a documentação oficial:
👉 [Flutter Testing Overview](https://docs.flutter.dev/testing/overview)

---

Mantenha os testes sempre atualizados para garantir a qualidade do código! ✅
