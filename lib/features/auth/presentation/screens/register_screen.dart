import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_overlay_loader/flutter_overlay_loader.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_starter/features/auth/data/dtos/dtos.dart';
import 'package:flutter_starter/features/auth/presentation/providers/providers.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import '../../../../core/helpers/dialog_helpers.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  RegisterScreenState createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  int _activeCurrentStep = 0;
  bool _obscurePassword = true;

  final List<GlobalKey<FormBuilderState>> _formKeys = [
    GlobalKey<FormBuilderState>(),
    GlobalKey<FormBuilderState>(),
    GlobalKey<FormBuilderState>(),
  ];

  final _usernameCtrl = TextEditingController();
  final _emailCtrl = TextEditingController();
  final _firstNameCtrl = TextEditingController();
  final _lastNameCtrl = TextEditingController();
  final _passwordCtrl = TextEditingController();
  final _confirmPasswordCtrl = TextEditingController();

  // Here we have created list of steps
  // that are required to complete the form
  List<Step> stepList() => [
        // This is step1 which is called Account.
        // Here we will fill our personal details
        Step(
          state:
              _activeCurrentStep <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeCurrentStep >= 0,
          title: const Text('Account'),
          content: FormBuilder(
            key: _formKeys[0],
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'username',
                  controller: _usernameCtrl,
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.text,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(6),
                    ],
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Username',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  name: 'email',
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.done,
                  controller: _emailCtrl,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      FormBuilderValidators.email(),
                    ],
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                ),
              ],
            ),
          ),
        ),
        // This is Step2 here we will enter our address
        Step(
          state:
              _activeCurrentStep <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeCurrentStep >= 1,
          title: const Text('Personal details'),
          content: FormBuilder(
            key: _formKeys[1],
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'first_name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  controller: _firstNameCtrl,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                  decoration: const InputDecoration(
                    labelText: 'First Name',
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  name: 'last_name',
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.done,
                  controller: _lastNameCtrl,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                    ],
                  ),
                  decoration: const InputDecoration(
                    labelText: 'Last name',
                  ),
                ),
              ],
            ),
          ),
        ),

        Step(
          state:
              _activeCurrentStep <= 2 ? StepState.editing : StepState.complete,
          isActive: _activeCurrentStep >= 2,
          title: const Text('Password'),
          content: FormBuilder(
            key: _formKeys[2],
            child: Column(
              children: [
                FormBuilderTextField(
                  name: 'password',
                  textInputAction: TextInputAction.next,
                  obscureText: _obscurePassword,
                  keyboardType: TextInputType.visiblePassword,
                  controller: _passwordCtrl,
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.match(
                        r'(?:(?=.*\d)|(?=.*\W+))(?![.\n])(?=.*[A-Z])(?=.*[a-z]).*$',
                      )
                    ],
                  ),
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
                ),
                const SizedBox(
                  height: 8,
                ),
                FormBuilderTextField(
                  name: 'confirm_password',
                  obscureText: _obscurePassword,
                  textInputAction: TextInputAction.done,
                  controller: _confirmPasswordCtrl,
                  keyboardType: TextInputType.visiblePassword,
                  validator: (value) {
                    if (value != _passwordCtrl.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                    labelText: 'Confirm Password',
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
                ),
              ],
            ),
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    ref.listen(authProvider, (previous, next) {
      if (next.errorMessage.isNotEmpty) {
        Loader.hide();
        context.showSnackBar(next.errorMessage, type: SnackbarType.error);
      }

      if (next.status == AuthStatus.authenticated) {
        Loader.hide();
        context.showSnackBar('Register Successful', type: SnackbarType.success);
      }

      if (next.status == AuthStatus.checking) {
        Loader.show(
          context,
        );
      }
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      body: Stepper(
        controlsBuilder: (context, details) {
          final steps = stepList();
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: (details.stepIndex != steps.length - 1)
                ? Row(
                    children: [
                      if (details.onStepContinue != null)
                        FilledButton(
                          onPressed: () {
                            if (_formKeys[details.stepIndex]
                                .currentState!
                                .validate()) {
                              details.onStepContinue!();
                            }
                          },
                          child: const Text('Next'),
                        ),
                      const SizedBox(
                        width: 20,
                      ),
                      if (details.onStepCancel != null)
                        ElevatedButton(
                          onPressed: details.onStepCancel,
                          child: const Text('Back'),
                        ),
                    ],
                  )
                : Align(
                    alignment: Alignment.centerLeft,
                    child: FilledButton(
                      onPressed: () {
                        if (_formKeys[details.stepIndex]
                            .currentState!
                            .validate()) {
                          ref.read(authProvider.notifier).registerUser(
                                RegisterDto(
                                  email: _emailCtrl.text,
                                  username: _usernameCtrl.text,
                                  firstName: _firstNameCtrl.text,
                                  lastName: _lastNameCtrl.text,
                                  password: _passwordCtrl.text,
                                ),
                              );
                        }
                      },
                      child: const Text('Confirm'),
                    ),
                  ),
          );
        },
        currentStep: _activeCurrentStep,
        steps: stepList(),
        // onStepContinue takes us to the next step
        onStepContinue: () {
          if (_activeCurrentStep < (stepList().length - 1)) {
            setState(() {
              _activeCurrentStep += 1;
            });
          }
        },

        // onStepCancel takes us to the previous step
        onStepCancel: () {
          if (_activeCurrentStep == 0) {
            return;
          }

          setState(() {
            _activeCurrentStep -= 1;
          });
        },
      ),
    );
  }
}
