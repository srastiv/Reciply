import 'package:flutter/material.dart';
import 'package:reciply/features/data/models/homepage_content.dart';
import 'package:reciply/features/data/models/recipes.dart';
import 'package:reciply/features/presentation/constants/colors.dart';

class popularRecipesTypesViewBuilder extends StatefulWidget {
  popularRecipesTypesViewBuilder({Key? key, required this.context})
      : super(key: key);
  BuildContext context;
  @override
  State<popularRecipesTypesViewBuilder> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<popularRecipesTypesViewBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: foodType.length,
      itemBuilder: ((context, index) {
        return GestureDetector(
          child: Container(
            margin:
                const EdgeInsets.only(top: 0, left: 12, right: 12, bottom: 0),
            padding:
                const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
            decoration: BoxDecoration(
              color: foodType[index].isSelected ? kCommonGreen : kGrey,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Center(
              child: Text(
                foodType[index].foodType,
                style: const TextStyle(color: kWhite),
              ),
            ),
          ),
          onTap: () {
            setState(() {
              foodType[index].isSelected = !foodType[index].isSelected;
            });
          },
        );
      }),
    );
  }
}

class popularDishesListview extends StatelessWidget {
  const popularDishesListview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      scrollDirection: Axis.horizontal,
      itemCount: recipes.length,
      itemBuilder: ((context, index) {
        return Container(
          height: 136,
          width: 100,
          margin: const EdgeInsets.only(
            left: 20,
          ),
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
          ),
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: kLightestGrey.withOpacity(0.5),
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ], borderRadius: BorderRadius.circular(15), color: kWhite),
          child: Center(
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Container(
                    height: 80,
                    decoration: BoxDecoration(
                      color: kDarkestGreen,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(recipes[index].imagePath),
                    ),
                  ),
                ),
                Text(
                  recipes[index].recipeName,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(color: kBlack, fontSize: 16),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

class EditorsChoiceListView extends StatelessWidget {
  const EditorsChoiceListView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(0),
      scrollDirection: Axis.vertical,
      itemCount: recipes.length,
      itemBuilder: ((context, index) {
        return Container(
          margin: const EdgeInsets.only(
            bottom: 20,
          ),
          padding:
              const EdgeInsets.only(top: 10, left: 20, right: 20, bottom: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: kWhite,
            boxShadow: [
              BoxShadow(
                color: kLightestGrey.withOpacity(0.5),
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: kDarkestGreen,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(recipes[index].imagePath),
                  ),
                ),
              ),
              const SizedBox(width: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipes[index].recipeName,
                    style: const TextStyle(
                        color: kBlack,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  Text(
                    recipes[index].recipeAuthor,
                    style: const TextStyle(color: kGrey, fontSize: 14),
                  ),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: kDarkestGreen,
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: const Icon(
                    Icons.arrow_forward,
                    color: kWhite,
                  ),
                ),
              ),
            ],
          ),
        );
      }),
    );
  }
}
