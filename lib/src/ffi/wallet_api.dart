import 'dart:developer';
// import 'dart:ffi';
import 'dart:io';

import 'package:ffi/ffi.dart';
import 'package:fixnum/fixnum.dart';
import 'package:qmrmb_hdwallet_service/src/ffi/protobuf/gen/btc_fork.pb.dart';
import 'package:qmrmb_hdwallet_service/src/types/chain.dart';
import 'package:hex/hex.dart';
import 'package:path_provider/path_provider.dart';
import '../util/helper.dart';
import 'ffi.dart' as ffi;

import 'protobuf/gen/api.pb.dart';
import 'protobuf/gen/filecoin.pb.dart' as fil;
import 'protobuf/gen/ethereum.pb.dart' as eth;
import 'protobuf/gen/solana.pb.dart' as sol;
import 'protobuf/gen/btc_fork.pb.dart' as btc;
import 'protobuf/gen/cita.pb.dart' as cita;
import 'protobuf/gen/google/protobuf/any.pb.dart';
import 'protobuf/gen/params.pb.dart';

/// 使用之前需要根据 protobuf 目录里的文件生成对应语言的代码，可参考 [protobuf](https://github.com/protocolbuffers/protobuf)
/// 创建钱包步骤：
/// 1. 调用 `hdStoreCreate` 方法创建身份钱包 keystore
/// 2. 调用 `keystoreCommonDerive` 在生成的钱包创建不同链的地址，如果需要创建多条链，需要多次执行该方法
class WalletApi {
  Response callApi(String actionFunc) {
    final fn = actionFunc.toNativeUtf8().cast<Utf8>();
    final result = ffi.call_tcx_api_abm(fn);
    return Response.fromBuffer(HEX.decode(result.toDartString()));
  }

  /// 调用任何方法之前必须先初始化钱包
  Future initWalletApi() async {
    /// 获取文件存储路径
    final path = await _getKeystorePath();
    const _xpubCommonKey = 'B888D25EC8C12BD5043777B1AC49F872';
    const _xpubCommonIv = '9C0C30889CBCC5E01AB5B2BB88715799';
    initTokenCore(path, _xpubCommonKey, _xpubCommonIv, true);
  }
  
  static Future<String> _getKeystorePath() async {
    final dir = await getApplicationDocumentsDirectory();
    final keystoreDir = Directory('${dir.path}/keystore');
    if (!keystoreDir.existsSync()) {
      await keystoreDir.create();
    }
    return keystoreDir.path;
  }

  /// 初始化钱包
  /// [dir] keystore 文件存储路径
  /// [isDebug] 是否 debug 模式
  void initTokenCore(
      String dir, String xpubCommonKey, String xpubCommonIv, bool isDebug) {
    TcxAction tcxAction = TcxAction();
    InitTokenCoreXParam initTokenCoreXParam = InitTokenCoreXParam();
    initTokenCoreXParam.fileDir = dir;
    initTokenCoreXParam.xpubCommonKey = xpubCommonKey;
    initTokenCoreXParam.xpubCommonIv = xpubCommonIv;
    initTokenCoreXParam.isDebug = isDebug;
    tcxAction.method = "init_token_core_x";
    tcxAction.param = Any.pack(initTokenCoreXParam);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (!result.isSuccess) {
      throw FFIError(result.error);
    }
  }

  /// 扫描 keystore
  void scanKeyStores() {
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "scan_keystores";
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (!result.isSuccess) {
      throw FFIError(result.error);
    }
  }

  /// 创建身份钱包 keystore
  /// [password] 钱包密码
  /// [passwordHint] 钱包密码提示语
  /// [name]
  hdStoreCreate(String password, String passwordHint, String name) {
    HdStoreCreateParam hdStoreCreateParam = HdStoreCreateParam();
    hdStoreCreateParam.password = password;
    hdStoreCreateParam.passwordHint = passwordHint;
    hdStoreCreateParam.name = name;
    TcxAction hdCreate = TcxAction();
    hdCreate.method = "hd_store_create";
    hdCreate.param = Any.pack(hdStoreCreateParam);
    final result = callApi(HEX.encode(hdCreate.writeToBuffer()));
    if (result.isSuccess) {
      return WalletResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 导入助记词恢复钱包
  /// [mnemonic] 助记词
  /// [password] 钱包密码
  /// [source] 传 'MNEMONIC'
  /// [name] 钱包名称
  /// [passwordHint] 钱包密码提示语
  /// [overwrite] 是否覆盖
  /// [encoding] 助记词编码格式,传 ''
  hdStoreImport(String mnemonic, String password, String source, String name,
      String passwordHint, bool overwrite, String encoding) {
    HdStoreImportParam p = HdStoreImportParam();
    p.mnemonic = mnemonic;
    p.password = password;
    p.source = source;
    p.name = name;
    p.passwordHint = passwordHint;
    p.overwrite = overwrite;
    p.encoding = encoding;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "hd_store_import";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return WalletResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 导出钱包助记词
  /// [id] 钱包id
  /// [password] 钱包密码
  exportMnemonic(String password, String id) {
    WalletKeyParam walletKeyParam = WalletKeyParam();
    walletKeyParam.password = password;
    walletKeyParam.id = id;
    TcxAction walletMn = TcxAction();
    walletMn.method = "export_mnemonic";
    walletMn.param = Any.pack(walletKeyParam);
    final result = callApi(HEX.encode(walletMn.writeToBuffer()));
    if (result.isSuccess) {
      return KeystoreCommonExportResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 生成对应链的账户
  /// [id] 钱包 id
  /// [password] 钱包密码
  /// [chainType] [path] [network] [segWit] [chainId] [curve] 均为链相关的信息
  /// [Bitcoin]  chainType: 'BITCOIN', network: 'MAINNET', path: "m/44'/0'/0'/0/0", segWit: 'NONE', chainId：''
  /// [Litecoin] chainType: 'LITECOIN', network: 'MAINNET', path: "m/44'/2'/0'/0/0", segWit: 'NONE', chainId: ''
  /// [Dogecoin] chainType: 'DOGECOIN', network: 'MAINNET', path: "m/44'/3'/0'/0/0", segWit: 'NONE', chainId: ''
  /// [EVM]      chainType: 'ETHEREUM', network: 'MAINNET', path: "m/44'/60'/0'/0/0", segWit: 'NONE', chainId: ''
  /// [Filecoin] chainType: 'FILECOIN', network: 'MAINNET', path: "m/44'/461'/0'/0/0", curve: 'SECP256k1', chainId: '', segWit: 'NONE'
  /// [Filecoin BLS] chainType: 'FILECOIN', network: 'MAINNET', path: "m/12381/461/0/0", curve: 'BLS', chainId: '', segWit: 'NONE'
  /// [Solana] . chainType: 'SOLANA', network: 'MAINNET', path: "m/44'/501'/0'/0'", curve: 'ED25519', chainId: '', segWit: 'NONE'
  keystoreCommonDerive(
      String id,
      String password,
      String chainType,
      String path,
      String network,
      String segWit,
      String chainId,
      String curve) {
    KeystoreCommonDeriveParam keystoreCommonDeriveParam =
        KeystoreCommonDeriveParam();
    keystoreCommonDeriveParam.id = id;
    keystoreCommonDeriveParam.password = password;
    KeystoreCommonDeriveParam_Derivation derivations =
        KeystoreCommonDeriveParam_Derivation();
    derivations.chainType = chainType;
    derivations.path = path;
    derivations.network = network;
    derivations.segWit = segWit;
    derivations.chainId = chainId;
    derivations.curve = curve;
    keystoreCommonDeriveParam.derivations.add(derivations);
    TcxAction hdKeyStoreExport = TcxAction();
    hdKeyStoreExport.method = "keystore_common_derive";
    hdKeyStoreExport.param = Any.pack(keystoreCommonDeriveParam);
    final result = callApi(HEX.encode(hdKeyStoreExport.writeToBuffer()));
    if (result.isSuccess) {
      return AccountsResponse.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 导出对应链账户的私钥
  /// [password] 钱包密码
  /// [id] 钱包id
  /// [chainType] [path] [network]  均为链相关的信息
  /// [mainAddress] 钱包账户地址
  exportPrivateKey(String id, String password, String chainType, String network,
      String mainAddress, String path) {
    ExportPrivateKeyParam p = ExportPrivateKeyParam();
    p.id = id;
    p.password = password;
    p.chainType = chainType;
    p.network = network;
    p.mainAddress = mainAddress;
    p.path = path;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "export_private_key";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return KeystoreCommonExportResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 导入私钥恢复账号
  /// [privateKey] 私钥
  /// [password] 钱包密码
  /// [name] 钱包名称
  /// [passwordHint] 钱包密码提示语
  /// [overwrite] 是否覆盖
  /// [encoding] 私钥编码格式,传 ''
  privateKeyStoreImport(String privateKey, String password, String name,
      String passwordHint, bool overwrite, String encoding) {
    PrivateKeyStoreImportParam p = PrivateKeyStoreImportParam();
    p.privateKey = privateKey;
    p.password = password;
    p.name = name;
    p.passwordHint = passwordHint;
    p.overwrite = overwrite;
    p.encoding = encoding;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "private_key_store_import";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return WalletResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 导出对应链账户的私钥
  /// string id = 1;
  /// string password = 2;
  /// string chainType = 3;
  /// string network = 4;
  privateKeyStoreExport(
      String id, String password, String chainType, String network) {
    PrivateKeyStoreExportParam p = PrivateKeyStoreExportParam();
    p.id = id;
    p.password = password;
    p.chainType = chainType;
    p.network = network;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "private_key_store_export";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return KeystoreCommonExportResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 检查密码是否正确
  /// [id] 钱包id
  /// [password] 钱包密码
  keystoreCommonVerify(String id, String password) {
    WalletKeyParam p = WalletKeyParam();
    p.id = id;
    p.password = password;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "keystore_common_verify";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return Response.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  ///  删除钱包
  ///  [id] 钱包 id
  ///  [password] 钱包密码
  keystoreCommonDelete(String id, String password) {
    WalletKeyParam p = WalletKeyParam();
    p.id = id;
    p.password = password;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "keystore_common_delete";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return Response.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 判断hd keystore是否存在
  /// KeyType type = 1;
  /// string value = 2;
  /// string encoding = 3;
  keystoreCommonExists(String value, String encoding, int type) {
    KeystoreCommonExistsParam p = KeystoreCommonExistsParam();
    p.value = value;
    p.encoding = encoding;
    if (type == 0) {
      p.type = KeyType.MNEMONIC;
    } else {
      p.type = KeyType.PRIVATE_KEY;
    }
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "keystore_common_exists";
    tcxAction.param = Any.pack(tcxAction);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return KeystoreCommonExistsResult.fromBuffer(result.value.value);
    } else {
      return result.error;
    }
  }

  ///获取hd keystore内的active accounts
  /// string id = 1;
  keystoreCommonAccounts(String id) {
    KeystoreCommonAccountsParam p = KeystoreCommonAccountsParam();
    p.id = id;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "keystore_common_accounts";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return AccountsResponse.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  ///获取公钥 ***目前只支持TEZOS这条链
  ///  string id = 1;
  ///   string chainType = 2;
  ///   string address = 3;
  getPublicKey(String id, String chainType, String address) {
    PublicKeyParam p = PublicKeyParam();
    p.id = id;
    p.chainType = chainType;
    p.address = address;
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "get_public_key";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return PublicKeyResult.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// 签名函数
  /// string id = 1;
  ///    oneof key {
  ///     string password = 2;
  ///     string derivedKey = 3;
  ///   }
  ///  string chainType = 4;
  ///   string address = 5;
  ///   google.protobuf.Any input = 6;
  ///
  ///   message UnsignedMessage {
  ///   string to = 1;
  ///   string from = 2;
  ///    uint64 nonce = 3;
  ///   string value = 4;
  ///   int64 gasLimit = 5;
  ///  string gasFeeCap = 6;
  ///    string gasPremium = 7;
  ///   uint64 method = 8;
  /// string params = 9;
  /// }
  /// SignParam
  signFilTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage) {
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    fil.UnsignedMessage um = fil.UnsignedMessage();
    um.to = unMessage["To"];
    um.from = unMessage["From"];
    um.nonce = Int64(unMessage["Nonce"]);
    um.value = unMessage["Value"];
    um.gasLimit = Int64(unMessage["GasLimit"]);
    um.gasFeeCap = unMessage["GasFeeCap"];
    um.gasPremium = unMessage["GasPremium"];
    um.method = Int64(unMessage["Method"]);
    um.params = unMessage["Params"];
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return fil.SignedMessage.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// Solana 交易签名
  signSolTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage) {
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    sol.SolanaTxIn um = sol.SolanaTxIn();
    um.to = unMessage["to"];
    um.amount = unMessage["amount"];
    um.recentBlockhash = unMessage['recentBlockhash'];
    um.signal = unMessage["signal"];
    if (unMessage["param"] != null) {
      um.param = unMessage["param"];
    }
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return sol.SolanaTxOut.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// Evm 交易签名
  signEthTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage, String network) {
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    eth.EthereumTxIn um = eth.EthereumTxIn();
    um.to = unMessage["to"];
    um.nonce = unMessage["nonce"];
    um.value = unMessage["value"];
    um.gasPrice = unMessage['gas_price'];
    um.gas = unMessage['gas'];
    um.data = unMessage['data'];
    um.network = network;
    um.accessList = '[]';
    um.maxPriorityFeePerGas = unMessage['max_priority_fee_per_gas'];
    um.transactionType = unMessage['transaction_type'];
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return eth.EthereumTxOut.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  signMttTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage, String network) {
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    cita.Transaction um = cita.Transaction();
    um.to = unMessage["to"];
    um.nonce = unMessage["nonce"];
    um.value = unMessage["value"];
    um.data = unMessage['data'];
    um.validUntilBlock = unMessage['valid_until_block'];
    um.quota = unMessage['quota'];
    um.chainId = unMessage['chain_id'];
    um.version = unMessage['version'];
    um.toV1 = unMessage['to_v1'];
    um.chainIdV1 = unMessage['chain_id_v1'];
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      final signedTransaction =
          cita.SignedTransaction.fromBuffer(result.value.value);
      return listToHex(signedTransaction.transactionWithSig.writeToBuffer());
    } else {
      throw FFIError(result.error);
    }
  }

  /// Dogecoin 交易签名
  signDogeTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage, String network) {
    List<Utxo> utxo = [];
    List dataList = unMessage['unspents'];
    for (int i = 0; i < dataList.length; i++) {
      Utxo u = Utxo(
          txHash: dataList[i]['txid'],
          vout: dataList[i]['vout'],
          amount: Int64.parseInt(dataList[i]['amount']),
          address: address);
      utxo.add(u);
    }
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    btc.BtcForkTxInput um = btc.BtcForkTxInput(unspents: utxo);
    um.to = unMessage["to"];
    um.amount = Int64.parseInt(unMessage["amount"]);
    um.changeAddressIndex = 1;
    um.changeAddress = unMessage["changeAddress"];
    um.segWit = Chain.doge.segWit!;
    um.network = network;
    um.fee = Int64.parseInt(unMessage["fee"]);
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return btc.BtcForkSignedTxOutput.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// Bitcoin 交易签名
  signBitcoinTx(String id, String password, String derivedKey, String chainType,
      String address, Map unMessage, String network) {
    List<Utxo> utxo = [];
    List dataList = unMessage['unspents'];
    for (int i = 0; i < dataList.length; i++) {
      Utxo u = Utxo(
          txHash: dataList[i]['txid'],
          vout: dataList[i]['vout'],
          amount: Int64.parseInt(dataList[i]['amount']),
          address: address);
      utxo.add(u);
    }
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    btc.BtcForkTxInput um = btc.BtcForkTxInput(unspents: utxo);
    um.to = unMessage["to"];
    um.amount = Int64.parseInt(unMessage["amount"]);
    um.changeAddressIndex = 1;
    um.changeAddress = unMessage["changeAddress"];
    um.segWit = Chain.btc.segWit!;
    um.network = network;
    um.fee = Int64.parseInt(unMessage["fee"]);
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "sign_tx";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return btc.BtcForkSignedTxOutput.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }

  /// Evm 消息签名
  signEthMsg(String id, String password, String derivedKey, String chainType,
      String address, String value) {
    SignParam p = SignParam();
    p.id = id;
    if (password.isNotEmpty) {
      p.password = password;
    } else {
      p.derivedKey = derivedKey;
    }
    p.chainType = chainType;
    p.address = address;
    final um = eth.EthereumMsgIn(
      value: value,
    );
    p.input = Any.pack(um);
    TcxAction tcxAction = TcxAction();
    tcxAction.method = "eth_sign_msg";
    tcxAction.param = Any.pack(p);
    final result = callApi(HEX.encode(tcxAction.writeToBuffer()));
    if (result.isSuccess) {
      return eth.EthereumMsgOut.fromBuffer(result.value.value);
    } else {
      throw FFIError(result.error);
    }
  }
}

class FFIError extends Error {
  final String? message;

  FFIError([this.message]);

  @override
  String toString() {
    log('[Hdwallet ffi error] $message');
    return Error.safeToString(message).replaceAll('"', '');
  }
}
