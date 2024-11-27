// This setup uses Hardhat Ignition to manage smart contract deployments.
// Learn more about it at https://hardhat.org/ignition

const { buildModule } = require("@nomicfoundation/hardhat-ignition/modules");
module.exports = buildModule("FDModule", (m) => {
  const fdtcontract = m.contract("FraudDetectionContract");
  return { fdtcontract };
});
