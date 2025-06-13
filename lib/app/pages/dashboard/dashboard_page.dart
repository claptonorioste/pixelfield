import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pixelfield/app/pages/dashboard/bloc/dashboard_bloc.dart';
import 'package:pixelfield/app/pages/dashboard/widgets/collection_list.dart';
import 'package:pixelfield/app/utils/colors.dart';

@RoutePage()
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});
  static const route = '/dashboard';
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final List<Widget> _pages = [
    const Center(child: Text('Scan')),
    const Collection(),
    const Center(child: Text('Shop')),
    const Center(child: Text('Settings')),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardBloc()..add(DashboardEvent.started()),
      child: BlocConsumer<DashboardBloc, DashboardState>(
        listener: (context, state) {},
        builder: (context, state) {
          return Scaffold(
            body: _pages[state.selectedIndex],
            bottomNavigationBar: NavigationBar(
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              labelTextStyle: WidgetStateProperty.resolveWith((states) {
                if (states.contains(WidgetState.selected)) {
                  return TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  );
                }
                return TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey,
                );
              }),
              indicatorColor: Colors.transparent,
              selectedIndex: state.selectedIndex,
              onDestinationSelected: (index) {
                context.read<DashboardBloc>().add(
                  DashboardEvent.tabChanged(index),
                );
              },
              backgroundColor: Color(bgColor),
              destinations: [
                NavigationDestination(
                  selectedIcon: Image.asset(
                    'assets/icons/Scan.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  icon: Image.asset(
                    'assets/icons/Scan.png',
                    width: 24,
                    height: 24,
                  ),
                  label: 'Scan',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    'assets/icons/SquaresFour.png',
                    width: 24,
                    height: 24,
                    color: Colors.grey,
                  ),
                  selectedIcon: Image.asset(
                    'assets/icons/SquaresFour.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  label: 'Collection',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    'assets/icons/bottle.png',
                    width: 24,
                    height: 24,
                  ),
                  selectedIcon: Image.asset(
                    'assets/icons/bottle.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  label: 'Shop',
                ),
                NavigationDestination(
                  icon: Image.asset(
                    'assets/icons/GearSix.png',
                    width: 24,
                    height: 24,
                  ),
                  selectedIcon: Image.asset(
                    'assets/icons/GearSix.png',
                    width: 24,
                    height: 24,
                    color: Colors.white,
                  ),
                  label: 'Settings',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
