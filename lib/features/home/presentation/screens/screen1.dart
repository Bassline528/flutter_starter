import 'package:flutter/material.dart';
import 'package:flutter_starter/core/helpers/theme_helper.dart';

class Screen1Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 9.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Chats',
              style: context.textTheme.displaySmall,
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () => {},
                    leading: const CircleAvatar(
                      child: Text('A'),
                    ),
                    trailing: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                        color: context.colorScheme.tertiary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          index.toString(),
                          style: TextStyle(
                            color: context.colorScheme.onTertiary,
                          ),
                        ),
                      ),
                    ),
                    title: Text('User $index'),
                    subtitle: Text('Message $index'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
