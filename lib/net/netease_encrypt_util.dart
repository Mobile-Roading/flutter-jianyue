import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:weapon/utils/cipher.dart';

class NeteaseEncryptUtil {
  static const String nonce = '0CoJUm6Qyw8W8jud';
  static const String pubKey = "010001";
  static const String iv = "0102030405060708";
  static const String randomString = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
  static const String magic = '3go8&\$8*3*3h0k(2)2';
  static const String modulus = "00e0b509f6259df8642dbc35662901477df22677ec152b5ff68ace615bb7b725152b3ab17a876aea8a5aa76d2e417629ec4ee341f56135fccf695280104e0312ecbda92557c93870114af6c9d05c4f7f0c3685b7a46bee255932575cce10b424d813cfe4875d3e82047b97ddef52741d546b8e289dc6935b3ece0462db0a22b8e7";

  static Future<Map<String, dynamic>> aesEncrypt(String queryData) async {
    String key = createSecretKey();

    var dataEncryptor = EncryptAES(NeteaseEncryptUtil.nonce, NeteaseEncryptUtil.iv);
    String encryptedString = dataEncryptor.encrypt(queryData);
    var valueEncryptor = EncryptAES(key, NeteaseEncryptUtil.iv);
    String value = valueEncryptor.encrypt(encryptedString);

    return {"params": value, 'encSecKey': rsaEncrypt(key)};
  }

  static String encryptId(String id) {
    List<int> bytes3 = [];
    for (int i = 0; i < id.codeUnits.length; i++) {
      var t =
      (id.codeUnitAt(i) ^ magic.codeUnitAt(i % (magic.codeUnits.length)));
      bytes3.add(t);
    }
    var bytes = md5.convert(bytes3).bytes;
    String result = base64Encode(bytes);
    result = result.replaceAll("/", "_").replaceAll("+", "-");
    return result;
  }

  static String createSecretKey() => List.generate(
      16,
          (index) => NeteaseEncryptUtil.randomString[
      Random().nextInt(NeteaseEncryptUtil.randomString.length)]).join();

  static rsaEncrypt(String text) {
    text = reverse(text);
    BigInt biText = BigInt.parse(strToHex(text), radix: 16);
    BigInt biEx = BigInt.parse(NeteaseEncryptUtil.pubKey, radix: 16);
    BigInt biMod = BigInt.parse(NeteaseEncryptUtil.modulus, radix: 16);
    BigInt biRet = biText.modPow(biEx, biMod);
    return zFill(biRet.toRadixString(16));
  }

  static String zFill(String str) {
    while (str.length < 256) {
      str = "0" + str;
    }
    return str;
  }

  static strToHex(String text) {
    String res = "";
    for (int i = 0; i < text.length; i++) {
      res = res + text.codeUnitAt(i).toRadixString(16);
    }
    return res;
  }

  static String reverse(input) => input.split('').reversed.join();
}
