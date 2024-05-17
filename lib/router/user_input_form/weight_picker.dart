import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:health_plus/generated/l10n.dart';

class WeightPicker extends StatefulWidget {
  const WeightPicker({
    super.key,
    required this.onWeightChanged,
    required this.initialWeight,
  });

  final ValueChanged<int> onWeightChanged;
  final int initialWeight;

  @override
  State<WeightPicker> createState() => _WeightPickerState();
}

class _WeightPickerState extends State<WeightPicker> {
  late FixedExtentScrollController scrollController;

  final int minWeight = 10;
  final int maxWeight = 300;

  @override
  void initState() {
    super.initState();
    scrollController = FixedExtentScrollController(
      initialItem: widget.initialWeight - minWeight,
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
                S().kg,
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
                widget.onWeightChanged(minWeight + index);
              },
              children: List<Widget>.generate(
                maxWeight - minWeight + 1,
                (int index) {
                  return Center(
                    child: Text('${minWeight + index}'),
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
