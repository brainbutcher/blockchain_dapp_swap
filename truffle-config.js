//main entry point for the application

require('babel-register');
require('babel-polyfill');

module.exports = {
  networks: {  
    development: {
      host: "127.0.0.1",
      port: 7545,      // ganache local test blockchain network
      network_id: "*"  // Match any network id
    },
  },
  contracts_directory: './src/contracts/', // placed here so we can access from the client side
  contracts_build_directory: './src/abis/',
  compilers: {
    solc: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  }
}
