import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HeroView extends ConsumerStatefulWidget {
  const HeroView({
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState createState() => _HeroViewState();
}

class _HeroViewState extends ConsumerState<HeroView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/bg_hero.png"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
