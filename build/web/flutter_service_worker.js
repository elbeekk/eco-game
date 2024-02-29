'use strict';
const MANIFEST = 'flutter-app-manifest';
const TEMP = 'flutter-temp-cache';
const CACHE_NAME = 'flutter-app-cache';

const RESOURCES = {"version.json": "97551eb02d3289924e0fede718936b65",
"index.html": "b703c0496c28f93d0a7beb1ebd627e74",
"/": "b703c0496c28f93d0a7beb1ebd627e74",
"main.dart.js": "05e02772ac3df214a2d1a210f08a8789",
"flutter.js": "7d69e653079438abfbb24b82a655b0a4",
"favicon.png": "0179d65d120ea0b6c56a4544f798577e",
"icons/Icon-192.png": "46e484e3c4f7209a0e35b802e329c0e4",
"icons/Icon-maskable-192.png": "46e484e3c4f7209a0e35b802e329c0e4",
"icons/Icon-maskable-512.png": "cc27d6f435c8bab027a3b44cfb10902c",
"icons/Icon-512.png": "cc27d6f435c8bab027a3b44cfb10902c",
"style.css": "901f775b56838263f85a193f7a9eb52c",
"manifest.json": "032403f125539cded887d28bbf4a751f",
"assets/AssetManifest.json": "87858c6214508ee7fbffdd46d35d4a1d",
"assets/NOTICES": "6d68b0b7b8ba3f263328b73efe71b2df",
"assets/FontManifest.json": "deaa5c57341d3a8639aa1a1af22a8236",
"assets/AssetManifest.bin.json": "25f0cb85d819ee5e838738731b07b164",
"assets/packages/cupertino_icons/assets/CupertinoIcons.ttf": "6d342eb68f170c97609e9da345464e5e",
"assets/packages/flutter_vector_icons/fonts/Fontisto.ttf": "b49ae8ab2dbccb02c4d11caaacf09eab",
"assets/packages/flutter_vector_icons/fonts/Octicons.ttf": "f7c53c47a66934504fcbc7cc164895a7",
"assets/packages/flutter_vector_icons/fonts/Feather.ttf": "a76d309774d33d9856f650bed4292a23",
"assets/packages/flutter_vector_icons/fonts/Entypo.ttf": "31b5ffea3daddc69dd01a1f3d6cf63c5",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Brands.ttf": "3b89dd103490708d19a95adcae52210e",
"assets/packages/flutter_vector_icons/fonts/MaterialCommunityIcons.ttf": "b62641afc9ab487008e996a5c5865e56",
"assets/packages/flutter_vector_icons/fonts/AntDesign.ttf": "3a2ba31570920eeb9b1d217cabe58315",
"assets/packages/flutter_vector_icons/fonts/Foundation.ttf": "e20945d7c929279ef7a6f1db184a4470",
"assets/packages/flutter_vector_icons/fonts/Ionicons.ttf": "b3263095df30cb7db78c613e73f9499a",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Solid.ttf": "605ed7926cf39a2ad5ec2d1f9d391d3d",
"assets/packages/flutter_vector_icons/fonts/FontAwesome5_Regular.ttf": "1f77739ca9ff2188b539c36f30ffa2be",
"assets/packages/flutter_vector_icons/fonts/FontAwesome.ttf": "b06871f281fee6b241d60582ae9369b9",
"assets/packages/flutter_vector_icons/fonts/Zocial.ttf": "1681f34aaca71b8dfb70756bca331eb2",
"assets/packages/flutter_vector_icons/fonts/EvilIcons.ttf": "140c53a7643ea949007aa9a282153849",
"assets/packages/flutter_vector_icons/fonts/SimpleLineIcons.ttf": "d2285965fe34b05465047401b8595dd0",
"assets/packages/flutter_vector_icons/fonts/MaterialIcons.ttf": "8ef52a15e44481b41e7db3c7eaf9bb83",
"assets/packages/pixelarticons/fonts/pixelarticons.otf": "d38fa7c6111a0c992acc370505e76793",
"assets/shaders/ink_sparkle.frag": "4096b5150bac93c41cbc9b45276bd90f",
"assets/AssetManifest.bin": "1566d78f9e6bb5d76d4fca0ea01654ba",
"assets/fonts/MaterialIcons-Regular.otf": "e7069dfd19b331be16bed984668fe080",
"assets/assets/images/png/summer.png": "ef6ac9983d7ea5eba37f0756824e2fa4",
"assets/assets/images/png/energy.png": "732843144860ceb369c999bfcd56a5ad",
"assets/assets/images/png/eco.png": "57962bb4315c03f14343842892ed1721",
"assets/assets/images/png/app_logo.png": "5a379cb76264dc854124e4ae5c92c966",
"assets/assets/images/png/google.png": "cc4ce17a46bd25a88767ee6681f05c06",
"assets/assets/images/jpg/app_logo.jpg": "9fef9b3abca8275155ad8e6571e7d153",
"assets/assets/images/game_assets/buildings/consumers/factory.png": "db56b6b41a57f47546c3cf72bc7d5f5c",
"assets/assets/images/game_assets/buildings/consumers/market.png": "011a4b19a03b68ea1cd01dc561526b77",
"assets/assets/images/game_assets/buildings/consumers/residential.png": "703933d50dc6be5aa452fc86969385eb",
"assets/assets/images/game_assets/buildings/generators/solar_panel.png": "df9dd009d95674015dc98a1af3aa8338",
"assets/assets/images/game_assets/buildings/generators/wind.png": "48210508dc98be92cf1c842b8140ded4",
"assets/assets/images/game_assets/buildings/generators/water.png": "867470ec90d41d772916bfce79b0e4ed",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_sad.png": "81505eeaec7a80cfe8cccead1759abbc",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_surprised.png": "6d4650efb48f98394fce2566839513be",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_annoyed.png": "eeb5bd32fa111fe8c40f44d622580ed7",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_happy.png": "b32d4c072bb1e8e0e643e4d4ddd20f64",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_default.png": "4ebddcf70afb90c808fbad0e82feb3da",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Hair_A_Feminine_A-base.png": "d46d9172a347a39de9de131c4927f732",
"assets/assets/images/game_assets/character/images/portraits/Pixel-Portraits-Free/Feminine_A/Feminine_A_angry.png": "bd5ac3c3a965f5514de3907a469bc999",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniHunter.png": "1aea744aff0b79a79d2fe55099120435",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniGatherer.png": "ac9467ffa0bb187d88ec5af08e68e138",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniMiner.png": "e760456814b5bf22e28b9cae62213b71",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniThief.png": "5ce8f7c49a5b3f6daa68054019a83c9e",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniBlacksmith.png": "d2b6d375a2064e1a30fa8bed13e13ec7",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniSuspiciousMerchant.png": "6fc7e8fce3cc064b261ffae48cacd5a0",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniNun.png": "82e59ff18ec0bffc5c1d51fde3ad9017",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniLumberjack.png": "0641c08e658956a1b72c628fde0e9a91",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniMerchant.png": "db18e456e0426763c7a9c9fa62c41a58",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniGraveDigger.png": "5123eda05181ea081850d02fefef4faa",
"assets/assets/images/game_assets/character/spritesheets/Original/Without%2520Outline/MiniAnvil.png": "009ddf173e1d60555f452e801753292f",
"assets/assets/images/game_assets/village/images/TREE%25202%2520-%2520NIGHT.png": "5f5da0c413b99dc0b9a625717d88fb16",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25201%2520-%2520NIGHT.png": "bf89cab27965ec76c93f406d47abc64d",
"assets/assets/images/game_assets/village/images/global.png": "f2f698ac27be993183416b7a465f4c84",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25203%2520-%2520DAY.png": "a76664f36c3763f797e377d6546fcfcf",
"assets/assets/images/game_assets/village/images/HOUSE%25202%2520-%2520NIGHT.png": "c7d53e8c84fb5025d1fc920f9c2bcee9",
"assets/assets/images/game_assets/village/images/TILESET%2520VILLAGE%2520TOP%2520DOWN.psd": "d6ce76c5e522ba2048b28cbf5d3114c4",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25205%2520-%2520DAY.png": "9ac4a049dbef2923942149432299637a",
"assets/assets/images/game_assets/village/images/Wooden%2520House.png": "dd9452573747eca7654e8d851f6a6dae",
"assets/assets/images/game_assets/village/images/BRIDGE%2520-%2520DAY.png": "ae5c05120a199696ff82167b4338eb00",
"assets/assets/images/game_assets/village/images/FENCE%25202%2520-%2520DAY.png": "d147ed1ab5d87c75c770275b03d65eab",
"assets/assets/images/game_assets/village/images/Paths.png": "edce181e71f6f4c18c4a67105ab7235c",
"assets/assets/images/game_assets/village/images/TREE%25202%2520-%2520DAY.png": "df3dea1f3cb9960832ba032474c6856b",
"assets/assets/images/game_assets/village/images/Egg_item.png": "3f04df5cc8e6884dc35ec0218e8cc003",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25204%2520-%2520NIGHT.png": "a434ced56ce92434d399a0e810a4e781",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25201%2520-%2520DAY.png": "7ae35c79f421498cf190666c001cde26",
"assets/assets/images/game_assets/village/images/Free_Chicken_House.png": "ee601426ba9dd3e42cf5a9af5240d3ba",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25203%2520-%2520NIGHT.png": "a9d30ad4f78222bca188dbea732b7323",
"assets/assets/images/game_assets/village/images/TREE%25201%2520-%2520DAY.png": "85ad692fa475af0eaf73f9f940b678f4",
"assets/assets/images/game_assets/village/images/FENCE%25201%2520-%2520DAY.png": "83f9c51dd55a0f725dc1862e71581f34",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25202%2520-%2520DAY.png": "2cc905ba4b48a2ffe717d692b15192a5",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25203%2520CURVES%2520-%2520NIGHT.png": "2c1a7a20030c7f39fdbe192e48cc5a71",
"assets/assets/images/game_assets/village/images/GRASS%2520TILE%2520-%2520DAY.png": "b39cfc3b2a4617661a16ccd1c51f0277",
"assets/assets/images/game_assets/village/images/Basic_Grass_Biom_things.png": "aed9324ef39151b6813e2a4532362b92",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25204%2520-%2520DAY.png": "251315a4ec0afde86c785854a6c02e1f",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25201%2520-%2520NIGHT.png": "3338a8ea01beccfc016839888a7116ad",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25201%2520-%2520NIGHT.png": "ddd831813dfef5d0df4e6eb87f73e785",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25202%2520-%2520NIGHT.png": "a33227f8f81ed578eb9a93ee03cd1fce",
"assets/assets/images/game_assets/village/images/GROUND%2520TILE%2520-%2520NIGHT.png": "102dc8d3c36b19d8174702c1acdf53d1",
"assets/assets/images/game_assets/village/images/Cars3.png": "e810d1b55a2737fb1db61246ce7d6b19",
"assets/assets/images/game_assets/village/images/electricity.webp": "90af0bc3e0a3533da028d24e31ffd1d7",
"assets/assets/images/game_assets/village/images/Cars2.png": "d1ba07a8a9f5d80ae54384ad70b4d517",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25203%2520-%2520DAY.png": "ba15aee6ce342b1570d8dcf7c2359442",
"assets/assets/images/game_assets/village/images/REPORTER%2520IN%2520BLAZER%2520128x128.png": "ae31d817f8da416dbb012c0e8b2d7500",
"assets/assets/images/game_assets/village/images/Road%2520Signs/Roadblock_Horizontal_Anim_52X52.png.png": "e813fb1212e5baebcf8316d49ee20fab",
"assets/assets/images/game_assets/village/images/Road%2520Signs/cone.png": "8e79f05a995107a6d697167983fe55c8",
"assets/assets/images/game_assets/village/images/Road%2520Signs/Sign%2520Attention.png": "eaa8ba7083ef66685e5724684698ee5f",
"assets/assets/images/game_assets/village/images/Road%2520Signs/roadblock_vertical.png": "5cddcc270ce42e34e5cf238a2406a6fc",
"assets/assets/images/game_assets/village/images/Road%2520Signs/roadblock_vertical_anim_52X52.png": "0ccd2055f5c7afd6ca9d54c84b0efd58",
"assets/assets/images/game_assets/village/images/Road%2520Signs/SingsOrange.png": "12e6679edb3091bbff4ab211c5fd2c0b",
"assets/assets/images/game_assets/village/images/Road%2520Signs/Sign%2520Human.png": "d39efa2b492894a1ec2da1b1216e0286",
"assets/assets/images/game_assets/village/images/Road%2520Signs/road_stick_32x32.png": "e8bc8be9b357731bf0ec56d99509374f",
"assets/assets/images/game_assets/village/images/Road%2520Signs/roadblock.png": "52ab31c2d60c1c7d081da076f3d95fb2",
"assets/assets/images/game_assets/village/images/Road%2520Signs/Sign%2520Human%2520Sided.png": "be6a067f2a96e143c7163132785bf6be",
"assets/assets/images/game_assets/village/images/Road%2520Signs/road_stick.png": "5fb55fd99154a758521bf4fdb4f1deb0",
"assets/assets/images/game_assets/village/images/rocks.png": "2fa4bbdb25569dba214c87ea13c10088",
"assets/assets/images/game_assets/village/images/FENCE%25201%2520-%2520NIGHT.png": "2d02bec8e1e5c8f3cd155b2609c03e48",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25204%2520-%2520DAY.png": "ff84aeb5ddfb0dc97b8479c7d0858944",
"assets/assets/images/game_assets/village/images/City%2520Test0.png": "0bd1cbb26cad942f1b3196e6dc04ed45",
"assets/assets/images/game_assets/village/images/PIT%2520-%2520DAY.png": "2826918d4fcbe1583d5b09b19259955b",
"assets/assets/images/game_assets/village/images/Cars1.png": "0c6ebda30cc8a100d89732bff2388eac",
"assets/assets/images/game_assets/village/images/Basic_Furniture.png": "0c3e2a6244341a98d0e866a728f64dfc",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25204%2520CURVES%2520-%2520DAY.png": "62673f6433f257a690fa02b17317659b",
"assets/assets/images/game_assets/village/images/TREE%25203%2520-%2520NIGHT.png": "85ecbd803ebc8635af7b053be244b8fd",
"assets/assets/images/game_assets/village/images/Chest.png": "7fcaec2400170c2fddc318df4c7b6192",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25203%2520-%2520DAY.png": "343f4df6763dfc7c5b80a7671a42755e",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25203%2520CURVES%2520-%2520DAY.png": "6b9f55ac3bd33f149d590bfdb91d8687",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25204%2520-%2520DAY.png": "04b7c825a9db72392060392bd4fb95eb",
"assets/assets/images/game_assets/village/images/Hills.png": "e32e31952a4b7270e707bda621c0155c",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25205%2520-%2520NIGHT.png": "e8776fb3f8caf409aaaec077e601cd42",
"assets/assets/images/game_assets/village/images/Bitmask%2520references%2520gif.gif": "f589d9ce25d0510c4e9d2ee6251f6274",
"assets/assets/images/game_assets/village/images/(THANK%2520YOU).png": "e083a4f17b343d35d7ac020d195cbf93",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25202%2520-%2520DAY.png": "660efa83ecd12da60f9764c3601b432e",
"assets/assets/images/game_assets/village/images/Fences.png": "bb214423fa26359af83d09dea553bcfb",
"assets/assets/images/game_assets/village/images/Bitmask%2520references%25201.png": "76129ab5c4f63d7445140705add17dc8",
"assets/assets/images/game_assets/village/images/HOUSE%25201%2520-%2520DAY.png": "14d1e860349d6f4576c21dd79fcb91de",
"assets/assets/images/game_assets/village/images/!CL_DEMO_48x48.png": "1aa3573b810b0a146c8b333c6412c049",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25204%2520CURVES%2520-%2520NIGHT.png": "b37899bad4f4b4f89a48c933be47a7d9",
"assets/assets/images/game_assets/village/images/Grass.png": "0d797851a7171a2014aea20d78d0d4d1",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25202%2520-%2520NIGHT.png": "ee678a485087e80da6c7ef99b0742bae",
"assets/assets/images/game_assets/village/images/Bitmask%2520references%25202.png": "dd3f1914a6ec0dfbe7dc8868b79a5d5f",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25201%2520-%2520DAY.png": "16760d41bc189d42c472be700213a313",
"assets/assets/images/game_assets/village/images/GRASS%2520TILE%2520-%2520NIGHT.png": "a5ee51b4c2799911fb1daff8f6ec7d5c",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25202%2520-%2520NIGHT.png": "40049b76147bc7bb6584528b25f37f99",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25205%2520-%2520NIGHT.png": "70b243a85960b8695fa1426452182011",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25205%2520-%2520DAY.png": "157c6a61c23a71e285c3053e47dd091a",
"assets/assets/images/game_assets/village/images/Basic_Plants.png": "bd3d4451ebb4a9d9e5f93237a258d523",
"assets/assets/images/game_assets/village/images/HOUSE%25201%2520-%2520NIGHT.png": "12142f134a8dd77fa602d71846678dd8",
"assets/assets/images/game_assets/village/images/BRIDGE%2520-%2520NIGHT.png": "79cc6b6871feb13b7564ac7234a1abb9",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25202%2520-%2520DAY.png": "4732e3fc03d691a02e32feeb2d6e114d",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25202%2520-%2520NIGHT.png": "bf6e4442fcc7cc5f9c58d4247f7fcaa3",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25205%2520-%2520NIGHT.png": "e184be87ab81e041c955d3a52dc99d11",
"assets/assets/images/game_assets/village/images/Water.png": "78d1ad08e28c734e437b35e58f200560",
"assets/assets/images/game_assets/village/images/Wood_Bridge.png": "e5246b07d218753227d5addee22c3982",
"assets/assets/images/game_assets/village/images/TREE%25201%2520-%2520NIGHT.png": "b35df8e6c964104a1bc82c99c4d7599d",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25206%2520-%2520DAY.png": "3d0134ecbd9674fd9b28bd1e2e7b9c6e",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25205%2520-%2520NIGHT.png": "b6210a92e17287c2acd14f949ee1e7cb",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25201%2520-%2520DAY.png": "2d8bffb726c8ea816c69f0b20659a826",
"assets/assets/images/game_assets/village/images/building-red-01.png": "b761c58eeab13ff605b57b21c0e124eb",
"assets/assets/images/game_assets/village/images/rocks_shadow.png": "4fba24466cc54437d30e49c7d0bb29cd",
"assets/assets/images/game_assets/village/images/HOUSE%25202%2520-%2520DAY.png": "17986952fbe6fe6cfc08e4b7b355d202",
"assets/assets/images/game_assets/village/images/cars/cop-big-car-76x76.png": "fec31ff36ce69b3f0040452610a01ddb",
"assets/assets/images/game_assets/village/images/cars/muscle-car-76x76.png": "6d5d36b467b430a20ac754800b1d1e09",
"assets/assets/images/game_assets/village/images/cars/TEST-SmallCar-Sheet.png": "514c979f1fa9bc0923cba68e9e4732a0",
"assets/assets/images/game_assets/village/images/cars/ice-cream-car-76x76-2.png": "2e6d268bddb38e622f16484f0afbf372",
"assets/assets/images/game_assets/village/images/cars/player-car-76x76(right%2520way).png": "9cd08ce72b36edd25e41ed62929e2290",
"assets/assets/images/game_assets/village/images/cars/cop-car-76x76.png": "f1f854073868837ccb38d42e4b95abda",
"assets/assets/images/game_assets/village/images/cars/sedan-car-76x76.png": "2028169db207054f053c2e37b911452b",
"assets/assets/images/game_assets/village/images/cars/ice-cream-car-76x76.png": "fa02a736a6293295ed0fa43730dceebd",
"assets/assets/images/game_assets/village/images/cars/mini-car-76x76.png": "79575729297ea99c2de7e2799a5e65a8",
"assets/assets/images/game_assets/village/images/cars/couple-car-76x76.png": "73a6918ab718ce53a71ed857f7e48976",
"assets/assets/images/game_assets/village/images/CHURCH%2520-%2520DAY.png": "0c316270030d93a9038b7749a999e567",
"assets/assets/images/game_assets/village/images/WATER%2520TILE%2520-%2520DAY.png": "ade9b9734ee0076f2a05a5b53cf6b440",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25205%2520-%2520DAY.png": "85cff067067e00974604792959867451",
"assets/assets/images/game_assets/village/images/PIT%2520-%2520NIGHT.png": "73778639d5f6fe003b7fc13e972eb97a",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25203%2520-%2520NIGHT.png": "ba5002138d0e7ba246a72f4e4a6dd0d9",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25204%2520-%2520NIGHT.png": "9669b3f4634d67c34cf1eaa35979e61f",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25203%2520-%2520DAY.png": "237b6ed44fc529d2de4a7fb663e5fee8",
"assets/assets/images/game_assets/village/images/GROUND%2520TILE%2520-%2520DAY.png": "c1108796800f2910392db4a72ebb0b3c",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25204%2520-%2520NIGHT.png": "71e485d830d909988ba72506e290dcfb",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25201%2520-%2520DAY.png": "1932135a77c44dbc8278b3ac35fd491f",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25206%2520-%2520NIGHT.png": "2c8268177110b3d3330f22c519b70a18",
"assets/assets/images/game_assets/village/images/solarPanel.png": "df9dd009d95674015dc98a1af3aa8338",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25205%2520-%2520DAY.png": "b6f964a0441b61fc35a9d9334dc7be68",
"assets/assets/images/game_assets/village/images/WATER%2520TILE%2520-%2520NIGHT.png": "d9d4dc942fc476ba5a17c6cabd5130aa",
"assets/assets/images/game_assets/village/images/STAIRS%2520-%2520NIGHT.png": "30225b1593d3570d9e494793d626579d",
"assets/assets/images/game_assets/village/images/BaseSet.png": "9d9d69d7bb4b5698a440eceb5586bd16",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25202%2520-%2520DAY.png": "1f14bd0044aced14b270333fb8aea9c8",
"assets/assets/images/game_assets/village/images/STAIRS%2520-%2520DAY.png": "dfc733a565c63373cfdd0f47efb35d1d",
"assets/assets/images/game_assets/village/images/Basic_tools_and_meterials.png": "206aa4ad8d32b34d3005ebdce7c5d502",
"assets/assets/images/game_assets/village/images/GRASS%2520DETAIL%25201%2520-%2520NIGHT.png": "7c90d9574bf376e34d2971b9f64f85d7",
"assets/assets/images/game_assets/village/images/Simple_Milk_and_grass_item.png": "e1a8c3cb0eab64b423787996436dca1b",
"assets/assets/images/game_assets/village/images/!CL_DEMO.png": "5c242e939f4ac434566d4e7028cafdf9",
"assets/assets/images/game_assets/village/images/!CL_DEMO_32x32.png": "d74858c085c5eb8338df8885e35275fe",
"assets/assets/images/game_assets/village/images/GROUND%2520DETAIL%25203%2520-%2520NIGHT.png": "6644510f90db9f206a176b0e43edd698",
"assets/assets/images/game_assets/village/images/TREE%25203%2520-%2520DAY.png": "edaa94892c48674a2ab2418fef53eba7",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25203%2520-%2520NIGHT.png": "c9780ae0c7904d69cc43495a8d3d69c6",
"assets/assets/images/game_assets/village/images/FENCE%25202%2520-%2520NIGHT.png": "c2cc40ed10cba9447d487865a9e79124",
"assets/assets/images/game_assets/village/images/CHURCH%2520-%2520NIGHT.png": "7ab747d6caa08facd030df99e8d32902",
"assets/assets/images/game_assets/village/images/WATER%2520DETAIL%25204%2520-%2520DAY.png": "c6e87224f857aaf1210cb669ff97650f",
"assets/assets/images/game_assets/village/images/TERRAIN%2520SET%25204%2520-%2520NIGHT.png": "869306de011f2d3001822add8fd61f1a",
"assets/assets/images/game_assets/village/images/Tilled_Dirt.png": "ed19b895fd2eb9f1cf6abe1746987d4e",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_01_Block.png": "9019acf655a078809f6843f4e9e16e8c",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_02a4.png": "034c046992d67c4de3cfc85a9146d439",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_Handle_01.png": "da3bb896a2eb8572a0380aa19e072931",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_02a4.png": "df8db0cb5ba069709bb71f90f1926d38",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_02_Hollow.png": "c4789e5e237080fc5c8638a736656d35",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_01a1.png": "4cdf93abc28c1651a2b434de2b9cb121",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_01a3.png": "ec429a53cbbf4183ac7bc7a021bcb915",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_02a4.png": "2b1cc169743372aecb812942c14c9f7d",
"assets/assets/images/game_assets/button/images/UI_Flat_Slider.png": "2aacf7f890e4161c5239430abd94f8e2",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_Handle_03.png": "09a730c69c9da684086646a7dc86cf6e",
"assets/assets/images/game_assets/button/images/button%2520UI.png": "5b1c0351b55e5e83053bea1067e131c1",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_02a4.png": "ffdcba89e0558fa7f7bdaa1ea77882d7",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_02a4.png": "0d35496855518de2ad1e37c10eb28c22",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_Handle_02.png": "10c7aa9ce807a1399dd680665e54de39",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_01a2.png": "2cfdb111143baf0447d660d1f37d4185",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_02a1.png": "33546ed8da30863ac56b2e022f6cefbf",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_01_Inward.png": "f0976043ba8657bfd5e4ac21d483f4bf",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_02a3.png": "06f702c2c66aac69062f1cb500198470",
"assets/assets/images/game_assets/button/images/UI_Flat_Banner_02_Upward.png": "d85fbb73c6939b0677241328201af240",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_02a3.png": "eaead0d8177f7565048a96ee6d109c3a",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_02a1.png": "33546ed8da30863ac56b2e022f6cefbf",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_02a1.png": "06f702c2c66aac69062f1cb500198470",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_02a2.png": "3b30fdd4751d746b440802531fa1d05e",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_01_Vertical.png": "4c2e582f5f9dc0e7577d5edc5ff92acc",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_02a2.png": "e92610a3e5ba51bd2ab5ec59b5eec829",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_01_Unavailable.png": "80edbda829d7d2ba249c3cdd4917e3e3",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_02a2.png": "725ce2634979e2e84bb9ea9372e59a5a",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_02_Horizontal.png": "be91fcdea0c2f2f2679c640b9e2cdb5e",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_02a3.png": "df8db0cb5ba069709bb71f90f1926d38",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_02a3.png": "2b1cc169743372aecb812942c14c9f7d",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_02a2.png": "725ce2634979e2e84bb9ea9372e59a5a",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_Handle_04.png": "7f01045d2d76b90cc02263ae2ebe8c1c",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_02a2.png": "8816ddf34a327f4818a7a167539d5b68",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_02a1.png": "6344f96c1b5cb6184e29e8292c037cbc",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_02a1.png": "ffdcba89e0558fa7f7bdaa1ea77882d7",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_01_Lite.png": "0755218c6b94d9fa2149cf756aa0fb9b",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_01a4.png": "b00831314c31f51200425a0471198530",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_02a3.png": "33b3b7db6cc10517ec8a091f66e6e034",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_01a4.png": "3f4110508d3a513464810ad3e677ae18",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_01a4.png": "e48cb07e31e6b965ace8715771326aa8",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_02a1.png": "2b1cc169743372aecb812942c14c9f7d",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_01_Flat.png": "cef1c114697e23267d8f7f3075e1d337",
"assets/assets/images/game_assets/button/images/UI_Flat_Filler_03.png": "41ea6d50d1369fa164efce47ee5417f6",
"assets/assets/images/game_assets/button/images/UI_Flat_Checkmark_Small.png": "cf72229cdbcb20952956fc246b0a9206",
"assets/assets/images/game_assets/button/images/UI_Flat_Filler_02.png": "2de17fd2223c806abc1989af2c8bf2ab",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_01a4.png": "ec429a53cbbf4183ac7bc7a021bcb915",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_01a4.png": "19ac165497141cfd13961cb050198567",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_02a2.png": "33b3b7db6cc10517ec8a091f66e6e034",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_01_Standard.png": "13236ca85cec788bebf57c8230d87635",
"assets/assets/images/game_assets/button/images/UI_Flat_Banner_01_Downward.png": "bf8a3b0f4235fdebac91a066133f1c03",
"assets/assets/images/game_assets/button/images/UI_Flat_Filler_01.png": "7412e3ea3c53724325808eaa885fd422",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_01a4.png": "4cdf93abc28c1651a2b434de2b9cb121",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_02a3.png": "0d35496855518de2ad1e37c10eb28c22",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_01a2.png": "9516a6af0fc60142562a04d35ce656fe",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_01a2.png": "c997e3d0c917a4c0f5c11dc410f16cc5",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_01a1.png": "f7d83c9c21e6dfc8c20cf9af48cc3d15",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_01a1.png": "b00831314c31f51200425a0471198530",
"assets/assets/images/game_assets/button/images/UI_Flat_Filler_05.png": "f0ae1aac14aa1a97d9f271598b934338",
"assets/assets/images/game_assets/button/images/UI_Flat_Filler_04.png": "ab8d9dadf1f6930be19cc16c27939569",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_01a1.png": "b00831314c31f51200425a0471198530",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_01a3.png": "ecb6a177d0b7dd8d2918524a6e9075d0",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_02_Selected.png": "f5acf7c04f0164c3a90285fab90c2b72",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_01a3.png": "f7d83c9c21e6dfc8c20cf9af48cc3d15",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Press_01a1.png": "19ac165497141cfd13961cb050198567",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Lock_01a1.png": "25a3de3f0bc3b08d5b57329c75530a4c",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_01a2.png": "fce63a56b55b6fb08c31454465c8f899",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_01a2.png": "ef6d48df129c816d9b740d2ec8d83df3",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_01a3.png": "2cfdb111143baf0447d660d1f37d4185",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Release_02a4.png": "33546ed8da30863ac56b2e022f6cefbf",
"assets/assets/images/game_assets/button/images/UI_Flat_Dropdown.png": "67badf8ea47d323164023bb33a644658",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Lock_01a2.png": "ef6d48df129c816d9b740d2ec8d83df3",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Medium_Press_01a3.png": "4cdf93abc28c1651a2b434de2b9cb121",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_01_Horizontal.png": "eaba004e64f856df0ed8f0108312c9b6",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Release_01a3.png": "3f4110508d3a513464810ad3e677ae18",
"assets/assets/images/game_assets/button/images/UI_Flat_Checkmark_Large.png": "b0e8e99a258337e0dd6b3b8e22117b79",
"assets/assets/images/game_assets/button/images/UI_Flat_Dropdown_Handle.png": "3f57898eba65d491533d540961bdd987",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_02_Unavailable.png": "7f8a8f4c444cdcaa1b01ba57708db663",
"assets/assets/images/game_assets/button/images/UI_Flat_Cross_Small.png": "1a93835153c68fa9fedefb321b6cfa0a",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_02a4.png": "06f702c2c66aac69062f1cb500198470",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_01a1.png": "25a3de3f0bc3b08d5b57329c75530a4c",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_02_Lite.png": "27d315ef22a6087e93ab99a19a39db38",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_02a4.png": "cbf82087e907a8c24feb5d6c5d7c5464",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_01a3.png": "e48cb07e31e6b965ace8715771326aa8",
"assets/assets/images/game_assets/button/images/UI_Flat_Checkmark_Medium.png": "1dabeb189bb8a1b112f428f741acbe24",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_02_Standard.png": "60ea71c6ca0fe5d499889ec0c708837a",
"assets/assets/images/game_assets/button/images/UI_Flat_Banner_02_Downward.png": "65958be8c7b37bd57cf5e32ed243a956",
"assets/assets/images/game_assets/button/images/UI_Flat_Cross_Medium.png": "b029862ca56b4fc8aa5003ac27582fa7",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_02a4.png": "6344f96c1b5cb6184e29e8292c037cbc",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_01a2.png": "c997e3d0c917a4c0f5c11dc410f16cc5",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_02a3.png": "e6385ee42706ec3e118576f392ae9e49",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_01_Selected.png": "97ea3b72e0f6146968f4ef1d1f24ce56",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_02a2.png": "e92610a3e5ba51bd2ab5ec59b5eec829",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_02a3.png": "8816ddf34a327f4818a7a167539d5b68",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_02a1.png": "034c046992d67c4de3cfc85a9146d439",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_02a2.png": "cbf82087e907a8c24feb5d6c5d7c5464",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_02a3.png": "2843bbcf4dafa37691880b0248e0164b",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_02a1.png": "ffdcba89e0558fa7f7bdaa1ea77882d7",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_02a2.png": "eaead0d8177f7565048a96ee6d109c3a",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_01a4.png": "3f1da650dca0d22857ec9285b0d08add",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_02a1.png": "428f7f295686dcda5619e83662211225",
"assets/assets/images/game_assets/button/images/UI_Flat_Cross_Large.png": "e7d445a468a91de38e60e55a01573655",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_01a4.png": "cbf82087e907a8c24feb5d6c5d7c5464",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_02a1.png": "6344f96c1b5cb6184e29e8292c037cbc",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_02.png": "8538bd99d98da5bb4120e24edbfdd979",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_03.png": "075eb2cee81ea8748eaeb8396598c482",
"assets/assets/images/game_assets/button/images/UI_Flat_Banner_01_Upward.png": "a1fa4b03c46e048691e552afdbad908b",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_02_Available.png": "6e3e7d9a7fa35194f11179f9f56a1ee4",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_01a4.png": "f7d83c9c21e6dfc8c20cf9af48cc3d15",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_02_Block.png": "0376de2b75bf7f30a2a64130b6b7947d",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_02_Inward.png": "fd56af41a47d927aec2eed431a6f4d77",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_02a2.png": "3b30fdd4751d746b440802531fa1d05e",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_01a4.png": "25a3de3f0bc3b08d5b57329c75530a4c",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_01.png": "83832db7928a5132c2de0aa13fc03e03",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_02a3.png": "034c046992d67c4de3cfc85a9146d439",
"assets/assets/images/game_assets/button/images/UI_Flat_Textfield_01.png": "144c57476f84f4d885dc2dde0ab5e011",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_01_Hollow.png": "4d9d1efc8d65cc5b36655a7f29229a4c",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_01a3.png": "fce63a56b55b6fb08c31454465c8f899",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_01a2.png": "cbf82087e907a8c24feb5d6c5d7c5464",
"assets/assets/images/game_assets/button/images/UI_Flat_Frame_02_Vertical.png": "c4e4ca73e180641e32839105790adf5e",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_01a1.png": "e48cb07e31e6b965ace8715771326aa8",
"assets/assets/images/game_assets/button/images/UI_Flat_Scrollbar_04.png": "65b198d7bac0aadb0f59b7fc5c04342a",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_01a3.png": "e6385ee42706ec3e118576f392ae9e49",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_01a2.png": "9516a6af0fc60142562a04d35ce656fe",
"assets/assets/images/game_assets/button/images/UI_Flat_Textfield_02.png": "64c5741d68eeb8137d6c3430e1673984",
"assets/assets/images/game_assets/button/images/UI_Flat_Select_01a1.png": "428f7f295686dcda5619e83662211225",
"assets/assets/images/game_assets/button/images/UI_Flat_Fillbar_02_Flat.png": "b3bfc0329f27d21ea35db73b0567df42",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Press_02a4.png": "2843bbcf4dafa37691880b0248e0164b",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_01a2.png": "ecb6a177d0b7dd8d2918524a6e9075d0",
"assets/assets/images/game_assets/button/images/UI_Flat_Slider_Filler.png": "7c93e7489c19fc0b82c93cf8acf4fab2",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Small_Release_01a3.png": "3f1da650dca0d22857ec9285b0d08add",
"assets/assets/images/game_assets/button/images/UI_Flat_Button_Large_Lock_01a1.png": "19ac165497141cfd13961cb050198567",
"assets/assets/images/game_assets/button/images/UI_Flat_Slot_01_Available.png": "ae100dac1f65573c08b3cf9b41e51b8f",
"assets/assets/map.png": "d8716fae9febbcfd5110cab2839278bf",
"assets/assets/audio/loop.mp3": "715ffaffad31c849b26d50fe166e2931",
"assets/assets/lottie/energy.json": "a7796ede766c55183cc9c5ed0ae9fa4d",
"assets/assets/lottie/eco.json": "e476fd8b33db473d3655c2dd3b8c4273",
"canvaskit/skwasm.js": "87063acf45c5e1ab9565dcf06b0c18b8",
"canvaskit/skwasm.wasm": "2fc47c0a0c3c7af8542b601634fe9674",
"canvaskit/chromium/canvaskit.js": "0ae8bbcc58155679458a0f7a00f66873",
"canvaskit/chromium/canvaskit.wasm": "143af6ff368f9cd21c863bfa4274c406",
"canvaskit/canvaskit.js": "eb8797020acdbdf96a12fb0405582c1b",
"canvaskit/canvaskit.wasm": "73584c1a3367e3eaf757647a8f5c5989",
"canvaskit/skwasm.worker.js": "bfb704a6c714a75da9ef320991e88b03"};
// The application shell files that are downloaded before a service worker can
// start.
const CORE = ["main.dart.js",
"index.html",
"assets/AssetManifest.json",
"assets/FontManifest.json"];

// During install, the TEMP cache is populated with the application shell files.
self.addEventListener("install", (event) => {
  self.skipWaiting();
  return event.waitUntil(
    caches.open(TEMP).then((cache) => {
      return cache.addAll(
        CORE.map((value) => new Request(value, {'cache': 'reload'})));
    })
  );
});
// During activate, the cache is populated with the temp files downloaded in
// install. If this service worker is upgrading from one with a saved
// MANIFEST, then use this to retain unchanged resource files.
self.addEventListener("activate", function(event) {
  return event.waitUntil(async function() {
    try {
      var contentCache = await caches.open(CACHE_NAME);
      var tempCache = await caches.open(TEMP);
      var manifestCache = await caches.open(MANIFEST);
      var manifest = await manifestCache.match('manifest');
      // When there is no prior manifest, clear the entire cache.
      if (!manifest) {
        await caches.delete(CACHE_NAME);
        contentCache = await caches.open(CACHE_NAME);
        for (var request of await tempCache.keys()) {
          var response = await tempCache.match(request);
          await contentCache.put(request, response);
        }
        await caches.delete(TEMP);
        // Save the manifest to make future upgrades efficient.
        await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
        // Claim client to enable caching on first launch
        self.clients.claim();
        return;
      }
      var oldManifest = await manifest.json();
      var origin = self.location.origin;
      for (var request of await contentCache.keys()) {
        var key = request.url.substring(origin.length + 1);
        if (key == "") {
          key = "/";
        }
        // If a resource from the old manifest is not in the new cache, or if
        // the MD5 sum has changed, delete it. Otherwise the resource is left
        // in the cache and can be reused by the new service worker.
        if (!RESOURCES[key] || RESOURCES[key] != oldManifest[key]) {
          await contentCache.delete(request);
        }
      }
      // Populate the cache with the app shell TEMP files, potentially overwriting
      // cache files preserved above.
      for (var request of await tempCache.keys()) {
        var response = await tempCache.match(request);
        await contentCache.put(request, response);
      }
      await caches.delete(TEMP);
      // Save the manifest to make future upgrades efficient.
      await manifestCache.put('manifest', new Response(JSON.stringify(RESOURCES)));
      // Claim client to enable caching on first launch
      self.clients.claim();
      return;
    } catch (err) {
      // On an unhandled exception the state of the cache cannot be guaranteed.
      console.error('Failed to upgrade service worker: ' + err);
      await caches.delete(CACHE_NAME);
      await caches.delete(TEMP);
      await caches.delete(MANIFEST);
    }
  }());
});
// The fetch handler redirects requests for RESOURCE files to the service
// worker cache.
self.addEventListener("fetch", (event) => {
  if (event.request.method !== 'GET') {
    return;
  }
  var origin = self.location.origin;
  var key = event.request.url.substring(origin.length + 1);
  // Redirect URLs to the index.html
  if (key.indexOf('?v=') != -1) {
    key = key.split('?v=')[0];
  }
  if (event.request.url == origin || event.request.url.startsWith(origin + '/#') || key == '') {
    key = '/';
  }
  // If the URL is not the RESOURCE list then return to signal that the
  // browser should take over.
  if (!RESOURCES[key]) {
    return;
  }
  // If the URL is the index.html, perform an online-first request.
  if (key == '/') {
    return onlineFirst(event);
  }
  event.respondWith(caches.open(CACHE_NAME)
    .then((cache) =>  {
      return cache.match(event.request).then((response) => {
        // Either respond with the cached resource, or perform a fetch and
        // lazily populate the cache only if the resource was successfully fetched.
        return response || fetch(event.request).then((response) => {
          if (response && Boolean(response.ok)) {
            cache.put(event.request, response.clone());
          }
          return response;
        });
      })
    })
  );
});
self.addEventListener('message', (event) => {
  // SkipWaiting can be used to immediately activate a waiting service worker.
  // This will also require a page refresh triggered by the main worker.
  if (event.data === 'skipWaiting') {
    self.skipWaiting();
    return;
  }
  if (event.data === 'downloadOffline') {
    downloadOffline();
    return;
  }
});
// Download offline will check the RESOURCES for all files not in the cache
// and populate them.
async function downloadOffline() {
  var resources = [];
  var contentCache = await caches.open(CACHE_NAME);
  var currentContent = {};
  for (var request of await contentCache.keys()) {
    var key = request.url.substring(origin.length + 1);
    if (key == "") {
      key = "/";
    }
    currentContent[key] = true;
  }
  for (var resourceKey of Object.keys(RESOURCES)) {
    if (!currentContent[resourceKey]) {
      resources.push(resourceKey);
    }
  }
  return contentCache.addAll(resources);
}
// Attempt to download the resource online before falling back to
// the offline cache.
function onlineFirst(event) {
  return event.respondWith(
    fetch(event.request).then((response) => {
      return caches.open(CACHE_NAME).then((cache) => {
        cache.put(event.request, response.clone());
        return response;
      });
    }).catch((error) => {
      return caches.open(CACHE_NAME).then((cache) => {
        return cache.match(event.request).then((response) => {
          if (response != null) {
            return response;
          }
          throw error;
        });
      });
    })
  );
}
