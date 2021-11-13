# blockchain_dapp_swap
    # Step 1: React, node,js, Solidity dapp (on Mac)
    # Step 2: Dockerize dapp, upload and run (on Linux)
    # Step 3: Design project, next stpes with k8s 


# notes to run without docker:
          ## dl code from github
          ## brower extension install react tools
          ## brower extension install metamask
          ## install node.js: https://nodejs.org/en/
          ## install ganache (test blockchain net): https://www.trufflesuite.com/ganache 
          ## npm install
          ## npm install -g truffle@5.1.14
          ## npm install --save identicon.js@2.3.3  //favicon for eth address 
          ## open a new terminal and run    $ npm run start
          ## quick start ganache

# need this to deploy a new copy to the blockchain -- because Solidity immutable code testing
          ## truffle init
          ## truffle migrate

          ## truffle migrate --reset   
          ## truffle console 
             ## myContract = await EthSwap.deployed()   // might need to retype variable name 
             ## name = await myContract.name()          // await is an async --  promise
             ## myContract.address
         
         ## npm install chai
         ## npm install --global mocha

         ## truffle test
             ## BDD/TDD testing 

# node.js quick cli 
         ## $ lsof -i tcp:3000 --> $ kill -9 <PID>
