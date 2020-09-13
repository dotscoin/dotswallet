import 'package:cryptography/cryptography.dart';

class GenerateWallet {
  var address;
  var vk;
  var sk;

  GenerateWallet({this.address, this.vk, this.sk});

  static GenerateWallet generate() {
    var sk = ecdsaP256Sha256.newKeyPair();
    return GenerateWallet(sk: sk);
  }
}
