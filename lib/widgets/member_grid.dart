import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_brl_trainees/widgets/card.dart';

class MemberGrid extends StatelessWidget {
  const MemberGrid({Key? key, required this.list}) : super(key: key);
  final List<BrlCard> list;
  @override
  Widget build(BuildContext context) {
    if (kDebugMode) {
      print(MediaQuery.of(context).size.width);
    }
    return SliverPadding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      sliver: SliverGrid(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: MediaQuery.of(context).size.width > 1250
              ? 4
              : MediaQuery.of(context).size.width > 768
                  ? 3
                  : 2,
          childAspectRatio: 3 / 4,
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
        ),
        delegate: SliverChildBuilderDelegate(
          (BuildContext context, int index) {
            return list[index];
          },
          childCount: list.length,
        ),
      ),
    );
  }
}
