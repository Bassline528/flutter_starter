// ignore_for_file: strict_raw_type

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/core/helpers/dialog_helpers.dart';
import 'package:flutter_starter/features/auth/presentation/providers/auth_providers.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends ConsumerState<LoginScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _usernameFieldKey = GlobalKey<FormBuilderFieldState>();
  final _passwordFieldKey = GlobalKey<FormBuilderFieldState>();

  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    ref.listen(authProvider, (previous, next) {
      if (next.errorMessage.isNotEmpty) {
        Loader.hide();
        context.showSnackBar(next.errorMessage, type: SnackbarType.error);
      }

      if (next.status == AuthStatus.authenticated) {
        Loader.hide();
        context.showSnackBar('Login Successful', type: SnackbarType.success);
      }

      if (next.status == AuthStatus.checking) {
        Loader.show(
          context,
        );
      }
    });
    return Scaffold(
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const FlutterLogo(
                  size: 120,
                ),
                const SizedBox(height: 10),
                FormBuilderTextField(
                  key: _usernameFieldKey,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  name: 'username',
                  decoration: const InputDecoration(labelText: 'Username'),
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(6),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                FormBuilderTextField(
                  key: _passwordFieldKey,
                  textInputAction: TextInputAction.done,
                  name: 'password',
                  keyboardType: TextInputType.visiblePassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    suffixIcon: IconButton(
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                    ),
                  ),
                  obscureText: _obscurePassword,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.maxLength(30),
                      FormBuilderValidators.minLength(6),
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text('Forgot Password?'),
                  ),
                ),
                const SizedBox(height: 15),
                FilledButton(
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  onPressed: () {
                    if (_formKey.currentState?.validate() ?? false) {
                      ref.read(authProvider.notifier).loginUser(
                            _usernameFieldKey.currentState?.value.toString() ??
                                '',
                            _passwordFieldKey.currentState?.value.toString() ??
                                '',
                          );
                    }
                  },
                  child: const Text('Login'),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account?'),
                    TextButton(
                      onPressed: () {
                        context.push('/register');
                      },
                      child: const Text('Register'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
