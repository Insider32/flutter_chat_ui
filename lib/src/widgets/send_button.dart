import 'package:flutter/material.dart';
import 'inherited_chat_theme.dart';
import 'inherited_l10n.dart';

/// A class that represents send button widget
class SendButton extends StatelessWidget {
  /// Creates send button widget
  const SendButton({
    Key? key,
    required this.onPressed,
    this.alignment = Alignment.center,
  }) : super(key: key);

  /// Callback for send button tap event
  final void Function()? onPressed;
  final Alignment alignment;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: alignment,
      height: 24,
      margin: const EdgeInsets.only(left: 16),
      width: 24,
      child: IconButton(
        icon: InheritedChatTheme.of(context).theme.sendButtonIcon != null
            ? InheritedChatTheme.of(context).theme.sendButtonIcon!
            : Image.asset(
                'assets/icon-send.png',
                color: Theme.of(context).colorScheme.primary,
                package: 'flutter_chat_ui',
              ),
        onPressed: onPressed,
        padding: EdgeInsets.zero,
        tooltip: InheritedL10n.of(context).l10n.sendButtonAccessibilityLabel,
      ),
    );
  }
}
