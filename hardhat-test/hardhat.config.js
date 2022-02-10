require("@nomiclabs/hardhat-waffle");

const ALCHEMY_API_KEY = "API KEY";

const ROPSTEN_PRIVATE_KEY = "METAMASK PRIVATE KEY";
/**
 * @type import('hardhat/config').HardhatUserConfig
 */
module.exports = {
  solidity: "0.7.3",
  networks: {
    ropsten: {
      url: `https://eth-ropsten.alchemyapi.io/v2/${ALCHEMY_API_KEY}`,
      accounts: [`${ROPSTEN_PRIVATE_KEY}`]
    }
  }
};
