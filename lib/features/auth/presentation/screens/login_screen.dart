import 'package:flutter/material.dart';
import 'package:flutter_starter/features/auth/presentation/providers/auth_providers.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class LoginScreen extends ConsumerWidget {
  LoginScreen({super.key});

  final _formKey = GlobalKey<FormBuilderState>();
  final _emailFieldKey = GlobalKey<FormBuilderFieldState>();
  final _passwordFieldKey = GlobalKey<FormBuilderFieldState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Center(
        child: FormBuilder(
          key: _formKey,
          child: Column(
            children: [
              const FlutterLogo(),
              const SizedBox(height: 10),
              FormBuilderTextField(
                key: _emailFieldKey,
                name: 'email',
                decoration: const InputDecoration(labelText: 'Email'),
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.email(),
                    FormBuilderValidators.minLength(6),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              FormBuilderTextField(
                key: _passwordFieldKey,
                name: 'password',
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
                validator: FormBuilderValidators.compose(
                  [
                    FormBuilderValidators.required(),
                    FormBuilderValidators.maxLength(30),
                    FormBuilderValidators.minLength(6),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.saveAndValidate() ?? false) {
                    ref.read(authProvider.notifier).logIn(
                          email:
                              _emailFieldKey.currentState?.value.toString() ??
                                  '',
                          password: _passwordFieldKey.currentState?.value
                                  .toString() ??
                              '',
                        );
                  }
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
