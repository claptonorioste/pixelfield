import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pixelfield/app/utils/colors.dart';
import 'package:pixelfield/app/widgets/background_container.dart';
import 'package:pixelfield/app/pages/bottle_details/widgets/details_tab.dart';
import 'package:pixelfield/app/pages/bottle_details/widgets/history_tab.dart';
import 'package:pixelfield/app/pages/bottle_details/widgets/tasting_note_tab.dart';
import 'package:pixelfield/domain/entities/bottle.dart';

@RoutePage()
class BottlePage extends StatelessWidget {
  final Bottle bottle;
  const BottlePage({super.key, required this.bottle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BackgroundContainer(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        color: Color(bgColor),
                        child: Text(
                          'Genesis Collection',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Color(bgColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: IconButton(
                          onPressed: () {
                            context.router.pop();
                          },
                          icon: Image.asset(
                            'assets/icons/X.png',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    bottle.image,
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.contain,
                  ),
                  Container(
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Color(primaryColor),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Bottle: ${bottle.filled}/${bottle.bottle}',
                          style: TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                        Row(
                          children: [
                            Text(
                              '${bottle.name.split(' ').first} ${bottle.name.split(' ')[1]}',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              '${bottle.age} years old',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Color(btColor),
                              ),
                            ),
                          ],
                        ),
                        Text(
                          bottle.name.split(' ').last,
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        DefaultTabController(
                          length: 3,
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                padding: EdgeInsets.all(5),
                                decoration: BoxDecoration(
                                  color: Color(tabBgColor),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TabBar(
                                  indicatorColor: Colors.transparent,
                                  labelColor: Color(bgColor),
                                  unselectedLabelColor: Colors.grey,
                                  indicatorSize: TabBarIndicatorSize.tab,
                                  dividerColor: Colors.transparent,
                                  labelStyle: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  indicator: BoxDecoration(
                                    color: Color(btColor),
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  tabs: [
                                    Tab(text: 'Details'),
                                    Tab(text: 'Tasting Note'),
                                    Tab(text: 'History'),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 300,
                                child: TabBarView(
                                  children: [
                                    DetailsTab(bottle: bottle),

                                    TastingNoteTab(bottle: bottle),

                                    HistoryTab(bottle: bottle),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      MaterialButton(
                        color: Color(btColor),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.add),
                            Text('Add to my Collection'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
