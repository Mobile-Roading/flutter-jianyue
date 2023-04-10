import 'package:encrypt/encrypt.dart';

class EncryptAES {
  Key key;
  IV iv;
  Encrypter encryptor;

  EncryptAES(String keyStr, [ String ivStr = '']):
      key = Key.fromUtf8(keyStr),
      iv = ivStr.isNotEmpty ? IV.fromUtf8(ivStr) : IV.fromLength(16),
      encryptor = Encrypter(AES(Key.fromUtf8(keyStr), mode: AESMode.cbc));

  String encrypt(String content) {
    return encryptor.encrypt(content,iv: iv).base64;
  }

  String decrypt(String content) {
    return encryptor.decrypt64(content, iv: iv);
  }
}
