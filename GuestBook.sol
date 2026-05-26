// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract GuestBook {
    struct Entry {
        address author;
        string message;
        uint256 timestamp;
    }

    Entry[] public entries;

    event NewEntry(address indexed author, string message);

    function sign(string calldata _message) external {
        entries.push(Entry({
            author: msg.sender,
            message: _message,
            timestamp: block.timestamp
        }));
        emit NewEntry(msg.sender, _message);
    }

    function getEntryCount() external view returns (uint256) {
        return entries.length;
    }
}