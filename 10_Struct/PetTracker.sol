// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract PetTracker {
    struct Pet {
        string name;
        string animalType;
        uint age;
    }

    Pet[] public pets;

    function addPet(string memory _name, string memory _type, uint _age) public {
        pets.push(Pet(_name, _type, _age));
    }

    function getPet(uint index) public view returns (string memory, string memory, uint) {
        Pet memory p = pets[index];
        return (p.name, p.animalType, p.age);
    }
}
