class Chain {
  final String name;
  final String path;
  final String symbol;
  final String? curve;
  final String? segWit;
  final String? chainId;
  Chain(this.name, this.symbol, this.path,
      {this.curve, this.segWit, this.chainId});
  static final btc = Chain(
    'BITCOIN',
    'BTC',
    "m/49'/0'/0'/0/0",
    segWit: 'P2WPKH',
  );
  static final ltc =
      Chain('LITECOIN', 'LTC', "m/44'/2'/0'/0/0", segWit: 'NONE');
  static final doge =
      Chain('DOGECOIN', 'DOGE', "m/44'/3'/0'/0/0", segWit: 'NONE');
  static final eth =
      Chain('ETHEREUM', 'ETH', "m/44'/60'/0'/0/0", segWit: 'NONE');
  static final mtt =
      Chain('MTT', 'MTT', "m/44'/60'/0'/0/0", segWit: 'NONE');
  static final fil =
      Chain('FILECOIN', 'FIL', "m/44'/461'/0'/0/0", curve: 'SECP256k1');
  static final filBls =
      Chain('FILECOIN', 'FIL', "m/12381/461/0/0", curve: 'BLS');
  static final solana =
      Chain('SOLANA', 'SOL', "m/44'/501'/0'/0'", curve: 'ED25519');

  static Chain getChain(String chainType) {
    switch (chainType) {
      case 'FILECOIN':
        return fil;
      case 'DOGECOIN':
        return doge;
      case 'FILECOIN_BLS':
        return filBls;
      case 'LITECOIN':
        return ltc;
      case 'BITCOIN':
        return btc;
      case 'ETHEREUM':
        return eth;
      case 'SOLANA':
        return solana;
      case 'MTT':
        return mtt;
      default:
        return fil;
    }
  }
}
