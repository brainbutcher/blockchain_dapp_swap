// this file is accessing Truffle
// it takes a smart contract named const "Migrations" and puts it on the blockchain 

const Migrations = artifacts.require("Migrations");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
