// this file is accessing Truffle
// it takes a smart contract named const "Migrations" and puts it on the blockchain 


// think of this as a DB migration (in a way: you are migrating the state from one state to another) 
// you are moving "immuntable DB tables" (immuntable EthSwap contract) to the Blockchain -- changing its state from one state to another

const EthSwap = artifacts.require("EthSwap");

module.exports = function(deployer) {
  deployer.deploy(EthSwap);
};
