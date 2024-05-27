part of 'home_view.dart';

class _AppBar extends StatefulWidget implements PreferredSizeWidget {
  const _AppBar({super.key});

  @override
  State<_AppBar> createState() => _AppBarState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarState extends State<_AppBar> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: DurationItems.durattionNormal());
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(LanguageItems.appBarName.languageString()),
      actions: [
        InkWell(
          onTap: () {
            controller.animateTo(context.read<ThemeNotifer>().isLightTheme ? 1 : 0.5);
            context.read<ThemeNotifer>().changeTheme();
          },
          child: Lottie.asset(
            LottieItems.themeChange.lottiePath,
            repeat: false,
            controller: controller,
            width: MediaQuery.of(context).size.width * 0.2,
          ),
        ),
      ],
    );
  }
}
