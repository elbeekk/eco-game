import 'package:eco_game/infrastructure/models/class/building.dart';
import 'package:eco_game/infrastructure/models/class/message.dart';

class LocalData {
  LocalData._();

  static List<BuildingModel> houses = [
    BuildingModel(
      name: "Residential House",
      image: "assets/images/game_assets/buildings/consumers/residential.png",
      description: "Basic housing for residents of the town. Consumes energy for lighting, heating, and appliances.",
      energy: -10,
      duration: 0.5,
      price: 2500,
    ),
    BuildingModel(
      name: "Commercial Building (Market)",
      image: "assets/images/game_assets/buildings/consumers/market.png",
      description: "A market where goods are bought and sold. Requires energy for lighting, refrigeration, and other operations.",
      energy: -20,
      duration: 2,
      price: 3000,
    ),BuildingModel(
      name: "Industrial Factory",
      image: "assets/images/game_assets/buildings/consumers/factory.png",
      description: "A factory for manufacturing goods. Requires energy for machinery, lighting, and heating.",
      energy: 50,
      duration: 3,
      price: 8000,
    ),
  ];


  static List<BuildingModel> generators = [
    BuildingModel(
      name: "Solar Panel Array",
      image: "assets/images/game_assets/buildings/generators/solar_panel.png",
      energy: 50,
      description: "A collection of solar panels installed on rooftops or in open spaces. They harness sunlight to generate clean and renewable energy for the town.",
      duration: 1,
      price: 2000,
    ),
    BuildingModel(
      name: "Wind Turbine Farm",
      image: "assets/images/game_assets/buildings/generators/wind.png",
      description: "A group of wind turbines erected in an area with consistent wind flow. They capture the kinetic energy of the wind and convert it into electricity.",
      energy: 100,
      duration: 2,
      price: 5000,
    ),
    BuildingModel(
      name: "Hydroelectric Power Plant",
      image: "assets/images/game_assets/buildings/generators/water.png",
      energy: 200,
      description: "A facility that harnesses the energy of flowing water to generate electricity. It typically utilizes a dam or water reservoir to control water flow and drive turbines.",
      duration: 4,
      price: 10000,
    ),
  ];
  static List<BuildingModel> trees = [];

  static List<MessageModel> introMessages = [
    MessageModel(
        id: '1',
        text:
        "Welcome, traveler, to the vibrant world of Energy Quest! I am your guide on this epic journey towards sustainability and prosperity. Behold, the humble beginnings of your very own town, where every decision you make will shape its destiny.",
        character:
        "assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_happy.png"),
    MessageModel(
        id: '2',
        text:
        "But fear not, for with determination and ingenuity, we shall transform this modest abode into a thriving beacon of renewable energy and environmental stewardship!",
        character:
        "assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_happy.png"),
    MessageModel(
        id: '3',
        text:
        "Together, we will harness the power of the sun, wind, and water to fuel our ambitions. Are you ready to embark on this extraordinary quest?",
        character:
        "assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_happy.png"),
    MessageModel(
        id: '4',
        text:
        "Excellent! Let us begin by laying the foundation of our sustainable utopia. Follow my lead, and together, we shall build a brighter future for generations to come.",
        character:
        "assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_happy.png"),
  ];
}
