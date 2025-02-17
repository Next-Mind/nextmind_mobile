import 'package:flutter/material.dart';
import 'package:nextmind_mobile/ui/auth/sign_in/view_models/auth_viewmodel.dart';

class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = AuthViewModel.to;
    return Material(
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/nextmind/logotipo_branco.png'),
            SizedBox(height: 84),
            TextFormField(
              controller: viewModel.emailController,
              decoration: InputDecoration(
                hintText: 'email@example.com',
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            SizedBox(height: 36),
            TextFormField(
              controller: viewModel.passwordController,
              decoration: InputDecoration(
                hintText: 'Digite sua senha',
                prefixIcon: Icon(Icons.lock_outline),
                suffixIcon: IconButton(
                  icon: Icon(viewModel.passwordVisible.value
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: viewModel.togglePasswordVisibility,
                ),
              ),
              obscureText: !viewModel.passwordVisible.value,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text('Esqueceu a senha?'),
                ),
              ],
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 48),
              ),
              child: Text('ENTRAR'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 48),
              ),
              child: Text('CRIAR CONTA'),
            ),
            SizedBox(height: 16),
            SizedBox(
              width: 126,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.facebook, size: 24),
                  Icon(Icons.email, size: 24),
                  Icon(Icons.apple, size: 24),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
