import 'package:flutter/material.dart';

class MarathonModel {
  String imgPath;
  String name;
  String location;
  String description;

  MarathonModel({
    required this.imgPath,
    required this.name,
    required this.location,
    required this.description,
  });
}

class BottomBarModel {
  IconData icon;
  bool isSelected;

  BottomBarModel({required this.icon, this.isSelected = false});
}

final List<MarathonModel> marathons = [
  MarathonModel(
    imgPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/6/6f/The_chase_is_on....jpg/500px-The_chase_is_on....jpg',
    name: 'Берлинский марафон',
    location: 'Берлин, Германия',
    description:
        'Один из самых быстрых марафонов в мире: трасса ровная, почти без подъёмов. Именно здесь было установлено больше всего мировых рекордов на марафонской дистанции.',
  ),
  MarathonModel(
    imgPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/3/35/New_York_marathon_Verrazano_bridge.jpg/500px-New_York_marathon_Verrazano_bridge.jpg',
    name: 'Нью-Йоркский марафон',
    location: 'Нью-Йорк, США',
    description:
        'Самый массовый марафон планеты, в нём участвует больше 50 тысяч бегунов. Старт проходит на мосту Верразано, а трасса пересекает все пять районов города.',
  ),
  MarathonModel(
    imgPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/4/41/2008_Tokyo_Marathon_02.jpg/500px-2008_Tokyo_Marathon_02.jpg',
    name: 'Токийский марафон',
    location: 'Токио, Япония',
    description:
        'Проводится с 2007 года и входит в серию World Marathon Majors. Трасса проходит мимо главных достопримечательностей Токио, а болельщики стоят вдоль всей дистанции.',
  ),
  MarathonModel(
    imgPath:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Top_Three_Men_at_London_Marathon_2009_crop.jpg/500px-Top_Three_Men_at_London_Marathon_2009_crop.jpg',
    name: 'Лондонский марафон',
    location: 'Лондон, Великобритания',
    description:
        'Проходит каждую весну с 1981 года. Финиш на улице Мэлл у Букингемского дворца, а многие участники бегут в костюмах и собирают деньги на благотворительность.',
  ),
];

final List<BottomBarModel> bottomBarItems = [
  BottomBarModel(icon: Icons.explore_outlined, isSelected: true),
  BottomBarModel(icon: Icons.favorite_border),
  BottomBarModel(icon: Icons.timer_outlined),
  BottomBarModel(icon: Icons.account_circle_outlined),
];
