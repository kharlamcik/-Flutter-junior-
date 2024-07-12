import 'package:flutter/material.dart';
import 'package:webpricol/home/ui/home_screen.dart';
import 'package:webpricol/utils/colors.dart';
import 'package:webpricol/utils/fonts.dart';
import '../../home/widget/search_widget.dart';
import '../button/text_button.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController _controllerTitle;

  const CustomAppBar({super.key, required TextEditingController controllerTitle})
      : _controllerTitle = controllerTitle;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: AppColors.white,

      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Ink(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: AppColors.greyContainer),
                child: InkWell(
                  splashColor: AppColors.purple,
                  borderRadius: BorderRadius.circular(9),
                  onTap: () {},
                ),
              ),
              const SizedBox(
                width: 50,
              ),
              CustomTextButton(
                text: 'Подборки',
                onTap: () {},
              ),
              const SizedBox(
                width: 20,
              ),
              CustomTextButton(
                text: 'Каталог',
                onTap: () {Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );},
              ),
            ],
          ),
          Container(
            height: 40,
            width: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: AppColors.greyContainer),
            child: Center(
              child: SearchWidget(controllerTitle: _controllerTitle),
            ),
          ),
          Row(
            children: [
              Text(
                'RU | EN',
                style: AppTypography.font20w400,
              ),
              const SizedBox(
                width: 20,
              ),
              Ink(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: AppColors.greyContainer),
                child: InkWell(
                  splashColor: AppColors.purple,
                  borderRadius: BorderRadius.circular(9),
                  onTap: () {},
                ),
              ),
              Text(
                ' 0',
                style: AppTypography.font20w400,
              ),
              const SizedBox(
                width: 50,
              ),
              Ink(
                width: 100,
                height: 40,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9),
                    color: AppColors.grey),
                child: InkWell(
                  splashColor: AppColors.purple,
                  onTap: () {},
                  borderRadius: BorderRadius.circular(9),
                  child: Center(
                    child: Text(
                      'Войти',
                      style: AppTypography.font20w400,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
