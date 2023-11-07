require("@nomicfoundation/hardhat-toolbox");
//reqiure ("hardhat-gas-reporter");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  hardhat: {
    url: "http://localhost:8545",
    accounts: [0xd8d06506e6b7b947aee5e452bc0f0a5da7bd9894f5306a0b42523dfa97f6472e]
  },
  mumbai_testnet: {
    url: "https://rpc-mumbai.maticvigil.com",
    accounts: [0Xd8d06506e6b7b947aee5e452bc0f0a5da7bd9894f5306a0b42523dfa97f6472e]
  },
  solidity : {
    version: "0.8.19",
    settings: {
      optimizer: {
        enabled: true,
        runs: 200
      }
    }
  },
  // ethernal: {
// apiToken: "proces.env.eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJmaXJlYmFzZVVzZXJJZCI6Imx5VXpzaWFUbmlWOEJrU2ZIRHkxc1JabDVSbTEiLCJhcGlLZXkiOiJSOVgxQzJILUNDVk1IRkMtTkg1V05ZOC1KNzRSNkFGXHUwMDAxIiwiaWF0IjoxNjk5MzUzMzM1fQ.gQrEW5TKH8fJJHkxsBJ1TMAByUnWTYoPSwFn4i_p12k"
// }
};
