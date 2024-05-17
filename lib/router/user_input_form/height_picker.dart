import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';

class HeightPicker extends StatefulWidget {
  const HeightPicker({
    super.key,
    required this.onHeightChanged,
    required this.initialHeight,
  });

  final ValueChanged<int> onHeightChanged;
  final int initialHeight;

  @override
  State<HeightPicker> createState() => _HeightPickerState();
}

class _HeightPickerState extends State<HeightPicker> {
  late FixedExtentScrollController scrollController;

  final int minHeight = 30;
  final int maxHeight = 300;

  @override
  void initState() {
    super.initState();
    scrollController = FixedExtentScrollController(
      initialItem: widget.initialHeight - minHeight,
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 118,
      height: 344,
      child: Column(
        children: [
          Container(
            width: 61,
            height: 31,
            decoration: BoxDecoration(
              color: const Color(0xFF0066FF),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Center(
              child: Text(
                S().cm,
                style: GoogleFonts.roboto().copyWith(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              scrollController: scrollController,
              itemExtent: 32.0,
              onSelectedItemChanged: (int index) {
                widget.onHeightChanged(minHeight + index);
              },
              children: List<Widget>.generate(
                maxHeight - minHeight + 1,
                (int index) {
                  return Center(
                    child: Text('${minHeight + index}'),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
