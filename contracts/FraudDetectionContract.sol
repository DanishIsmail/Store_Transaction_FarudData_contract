// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;
contract FraudDetectionContract {
    struct Transaction {
        string sender;
        string receiver;
        uint amount;
        bool isFraud;
    }

    Transaction[] private transactions;

    function addTransaction(
        string memory sender,
        string memory receiver,
        uint amount,
        bool isFraud
    ) public {
        transactions.push(Transaction(sender, receiver, amount, isFraud));
    }

    function getTransaction(uint index) public view returns (
        string memory sender,
        string memory receiver,
        uint amount,
        bool isFraud
    ) {
        Transaction memory t = transactions[index];
        return (t.sender, t.receiver, t.amount, t.isFraud);
    }
}
