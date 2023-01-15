require("@nomicfoundation/hardhat-toolbox");
const env = require("dotenv").config();

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.17",
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {},
    goerli: {
      url: "https://eth-goerli.g.alchemy.com/v2/HW15EJOje_mauYmzruD842os25nGciBy",
      accounts: [process.env.PRIVATE_KEY],
    },
  },
};
