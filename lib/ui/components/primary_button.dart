import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrimaryButton extends StatefulWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDisabled = false,
  });

  final String text;
  final VoidCallback onPressed;
  final bool isDisabled;

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) {
        if (widget.isDisabled || _isPressed) return;
        setState(() {
          _isPressed = true;
        });
      },
      onTapCancel: () {
        if (widget.isDisabled || !_isPressed) return;
        setState(() {
          _isPressed = false;
        });
      },
      onTapUp: (_) {
        if (widget.isDisabled || !_isPressed) return;
        setState(() {
          _isPressed = false;
        });
        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        width: double.infinity,
        height: 48,
        constraints: const BoxConstraints(maxWidth: 325),
        decoration: BoxDecoration(
          color: const Color(0xFF0066FF)
              .withOpacity(widget.isDisabled || _isPressed ? 0.5 : 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Center(
          child: Text(
            widget.text.toUpperCase(),
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: GoogleFonts.roboto().fontFamily,
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
