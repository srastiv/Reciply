import 'package:flutter/material.dart';
import 'package:reciply/features/presentation/constants/colors.dart';
import 'package:reciply/features/presentation/widgets/listview.dart';
import 'package:reciply/features/presentation/widgets/material_button.dart';
import 'package:reciply/features/presentation/widgets/nav_bar.dart';
import 'package:reciply/features/presentation/widgets/search.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int currentTab = 1;

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Homescreen();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kDarkestGreen,
        child: const Icon(
          Icons.food_bank,
        ),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BottomNavBar(),
      backgroundColor: kWhitishGrey,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: const [
                  Icon(
                    Icons.arrow_back,
                    color: kDarkestGreen,
                  ),
                  SizedBox(width: 100),
                  Center(
                    child: Text(
                      "Search",
                      style: TextStyle(
                          color: kDarkestGreen,
                          fontSize: 24,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              searchBar(),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 40,
                child: popularRecipesTypesViewBuilder(
                  context: context,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              popularEditorsRow("Popular Recipes"),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 130,
                child: popularDishesListview(),
              ),
              const SizedBox(
                height: 24,
              ),
              popularEditorsRow("Editor's Choice"),
              const SizedBox(
                height: 12,
              ),
              const SizedBox(
                height: 600,
                child: EditorsChoiceListView(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
