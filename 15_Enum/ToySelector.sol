// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ToySelector {
    // Step 1: List of toys
    enum Toy { Bear, Car, Dinosaur }

    // Step 2: Save the selected toy
    Toy public selectedToy;

    // Step 3: Choose a toy by number (0, 1, 2)
    function chooseToy(uint _choice) public {
        require(_choice <= 2, "Invalid toy choice");
        selectedToy = Toy(_choice);
    }

    // Step 4: Get the selected toy
    function getToy() public view returns (Toy) {
        return selectedToy;
    }
}
