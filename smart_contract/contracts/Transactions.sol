// SPDX-License-Identifier: UNLICENSED

pragma solidity ^ 0.8.0;

contract Transactions{
    uint256 transactionCount; //hold the no of transactions


    event Transfer(address from,address receiver,uint amount,string message,uint256 timestamp, string keyword);

    struct TransferStruct{
        address sender;
        address receiver;
        uint amount;
        string message;
        uint256 timestamp;
        string keyword;
    }

    TransferStruct[] transactions;

    function addToBlockchain(address payable receiver,uint amount, string memory message, string memory keyword) public{
        transactionCount += 1;
        transactions.push(TransferStruct(msg.sender, receiver, amount, message, block.timestamp,keyword));

        emit Transfer(msg.sender, receiver, amount, message, block.timestamp,keyword); //transfer amount
    }
    function getAllTransactions() public view returns(TransferStruct[] memory){
        return transactions;
    }
    function getTransactionsCount() public view returns(uint256){
        return transactionCount;
    }
}

//0xE6D6bA675aF823c1a8FCc1AF3a002808C65b7775