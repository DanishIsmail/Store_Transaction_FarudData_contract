require("@nomicfoundation/hardhat-toolbox");

/** @type import('hardhat/config').HardhatUserConfig */
module.exports = {
  solidity: "0.8.27",
  settings: {
    optimizer: {
      enabled: true,
      runs: 200,
    },
  },
  defaultNetwork: "hardhat",
  networks: {
    hardhat: {},
    ganache: {
      url: "HTTP://127.0.0.1:8545",
      accounts: [
        "0x3d89e28a27323bffbaacb10a7c1de95b0e551f6db873e408daf53c3b2c65518e",
      ],
    },
  },

  paths: {
    sources: "./contracts",
    tests: "./test",
    cache: "./cache",
    artifacts: "./artifacts",
  },

  mocha: {
    timeout: 4000000,
  },
};
