// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract FriendBook {
    struct Friend {
        string name;
        uint age;
        string favoriteFruit;
    }

    Friend[] public friends;

    function addFriend(string memory _name, uint _age, string memory _fruit) public {
        friends.push(Friend(_name, _age, _fruit));
    }

    function getFriend(uint _index) public view returns (string memory, uint, string memory) {
        Friend memory f = friends[_index];
        return (f.name, f.age, f.favoriteFruit);
    }
}
