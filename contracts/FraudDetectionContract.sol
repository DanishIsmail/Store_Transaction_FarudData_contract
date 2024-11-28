// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.27;

contract FraudDetectionContract {
    struct Transaction {
        string sender;
        string receiver;
        uint256 amount;
        bool isFraud;
    }

    Transaction[] private transactions;
    address private owner;
    address private admin;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not owner");
        _;
    }

    modifier onlyAdmin() {
        require(
            msg.sender == admin,
            "You are not autherized to perform this action"
        );
        _;
    }

    function addAdmin(address newAdmin) public onlyOwner {
        require(
            newAdmin != address(0),
            "You are not autherized to perform this action"
        );
        admin = newAdmin;
    }

    function addTransaction(
        string memory sender,
        string memory receiver,
        uint256 amount,
        bool isFraud
    ) public onlyAdmin {
        require(
            bytes(sender).length != 0 &&
                bytes(receiver).length != 0 &&
                amount != 0,
            "data should be valid"
        );
        transactions.push(Transaction(sender, receiver, amount, isFraud));
    }

    function getTransaction(uint256 index)
        public
        view
        returns (
            string memory sender,
            string memory receiver,
            uint256 amount,
            bool isFraud
        )
    {
        Transaction memory t = transactions[index];
        return (t.sender, t.receiver, t.amount, t.isFraud);
    }
}
