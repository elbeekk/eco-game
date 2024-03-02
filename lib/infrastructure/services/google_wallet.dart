import 'dart:convert';
import 'dart:developer';
import 'package:eco_game/infrastructure/models/class/pass.dart';
import 'package:eco_game/infrastructure/services/local_storage/local_storage.dart';
import 'package:flutter_google_wallet/flutter_google_wallet_plugin.dart';
import 'package:flutter_google_wallet/messages.dart';
import 'package:uuid/uuid.dart';

class WalletService {
  WalletService._();

  static final walletPlugin = GoogleWalletApi();
  static bool isAvailable = false;
  static String issuerId = "3388000000022310997";

  static Future<void> init() async {
    await walletPlugin.initWalletClient();
    isAvailable = await walletPlugin.getWalletApiAvailabilityStatus();
  }

  static Future<void> addCard() async {
    try {
      String jsonPass = PassModel(
          aud: 'google',
          origins: [],
          iss: LocalStorage.getMe()?.email,
          iat: DateTime.now().millisecondsSinceEpoch,
          typ: 'savetowallet',
          payload: Payload(genericObjects: [
            GenericObject(
              id: "$issuerId.123dwed2",
              classId: "$issuerId.first",
              state: 'active',
              cardTitle: CardTitle(
                defaultValue:
                    Value(value: ValueEnum.gameName, language: Language.enUs),
              ),
              logo: HeroImage(
                  sourceUri: SourceUri(
                      uri:
                          'https://firebasestorage.googleapis.com/v0/b/eco-game-780c7.appspot.com/o/app_logo.jpg?alt=media&token=28f748ff-8c2a-4d97-bc0e-fe10e23e09ef'),),
              genericType: 'GENERIC_OTHER',
              header: CardTitle(
                defaultValue:
                    Value(value: ValueEnum.first, language: Language.enUs),
              ),
              subheader: CardTitle(
                defaultValue:
                    Value(value: ValueEnum.firstD, language: Language.enUs),
              ),
              hexBackgroundColor: '#C0D470',
              heroImage: HeroImage(
                sourceUri: SourceUri(
                  uri:
                      "https://scontent.ftas5-1.fna.fbcdn.net/v/t39.30808-6/212214327_1182405038870228_6055217994928771178_n.png?_nc_cat=100&ccb=1-7&_nc_sid=efb6e6&_nc_ohc=hblRAE-TXXgAX8v04wx&_nc_ht=scontent.ftas5-1.fna&oh=00_AfB_6WKEU9WhzsM5l0tZrpw02P6e2N4a-OI6NMUwtdZV5Q&oe=65E78A69",
                ),
              ),
              // accountId: LocalStorage.getMe()?.id,
              // accountName: LocalStorage.getMe()?.firstName,
              // loyaltyPoints: LoyaltyPoints(
              //     label: "Super Learner", balance: Balance(string: '5')),
              // infoModuleData: InfoModuleData(labelValueRows: [
              //   LabelValueRow(
              //     columns: [
              //       Column(label: 'Elbek Zo\'r', value: 'zor'),
              //       Column(label: 'Elbek Yomon', value: 'yomon'),
              //     ],
              //   ),
              // ], showLastUpdateTime: 'true'),

              // version: 1,
            ),
          ])).toRawJson();
      // log(jsonPass);
      if (isAvailable) {
        await walletPlugin.savePasses(jsonPass, 2);
      }
    } catch (e) {
      log("save pass error: $e");
    }
  }
}
