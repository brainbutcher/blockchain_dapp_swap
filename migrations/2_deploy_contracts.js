// this file is accessing Truffle
// it takes a smart contract named const "Migrations" and puts it on the blockchain 


// think of this as a DB migration (in a way: you are migrating the state from one state to another) 
// you are moving "immuntable DB tables" (immuntable EthSwap contract) to the Blockchain -- changing its state from one state to another
const Token = artifacts.require("Token");
const EthSwap = artifacts.require("EthSwap");

module.exports = async function(deployer) {
  // Deploy Token
  await deployer.deploy(Token);
  const token = await Token.deployed();

  await deployer.deploy(EthSwap);
  const ethSwap = await EthSwap.deployed();

  // Transfer all tokens to EthSwap (1 million)
  await token.transfer(ethSwap.address, '21000000')
};
