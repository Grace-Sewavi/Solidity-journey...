# Solidity Learning Journey

This repository contains a personal collection of beginner-friendly smart contract projects written in Solidity. Each project is created to understand and practice one core concept at a time. The goal is to learn Solidity from the ground up in a clear, practical, and structured way.

## About This Repo

This is a long-term learning project focused on mastering the Solidity programming language through simple, hands-on examples. Each folder represents a specific core concept of Solidity. Inside each folder are two small, carefully written Solidity files that demonstrate the idea in action.

The code is clean, well-commented, and designed for anyone new to programming or blockchain development. All projects are kept as simple and readable as possible for easy learning and future reference.

## Folder Structure

| Folder Name                | Concept Description                                |
|---------------------------|----------------------------------------------------|
| `1_syntax_and_semantics`    | Understanding how Solidity is written              |
| `2_data_types`              | Working with numbers, strings, booleans etc.       |
| `3_variables_and_constants` | Storing values and using constants                 |
| `4_operators`               | Performing calculations and logic                  |
| `5_functions`               | Creating blocks that execute actions               |
| `6_conditionals`            | Using if-else logic in contracts                   |
| `7_loops`                   | Repeating actions with for/while loops             |
| `8_arrays`                  | Storing and accessing lists of items               |
| `9_mappings`                | Creating key-value pairs like a robot dictionary   |
| `10_structs`                | Grouping multiple data types into a custom format  |
| `11_modifiers`              | Restricting access or conditions before execution  |
| `12_events`                 | Broadcasting data when something happens           |
| `13_error_handling`         | Preventing and managing unwanted actions           |
| `14_constructor`            | Setting values when the contract is first created  |

---

## Projects So Far

### Folder: `1_syntax_and_semantics`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `MyNameRobot.sol`        | A simple contract that stores and returns a name                        |
| `FavoriteThing.sol`      | A contract that stores a favorite toy or item and returns it publicly   |

---

### Folder: `2_data_types`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `MyInfo.sol`             | Stores your name, age, and whether you like robots                      |
| `MyFruitBasket.sol`      | Holds an array of fruits using the `string[]` data type                 |

---

### Folder: `3_variables_and_constants`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `MoodChanger.sol`        | Demonstrates variable updates and storage                               |
| `MyBirthYear.sol`        | Uses a constant to store a birth year                                   |

---

### Folder: `4_operators`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `SimpleMath.sol`         | Performs addition, subtraction, multiplication, and division            |
| `CanIHaveIceCream.sol`   | Uses logical and comparison operators to decide if you get ice cream    |

---

### Folder: `5_functions`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `LittleCalculator.sol`   | A tiny calculator that adds two numbers                                 |
| `RobotGreeter.sol`       | Greets the user with their name using a function                        |

---

### Folder: `6_conditionals`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `AgeChecker.sol`         | Checks if a user is old enough based on a given age                     |
| `ToyDecision.sol`        | Returns different messages depending on what toy you want               |

---

### Folder: `7_loops`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `CountToTen.sol`         | Uses a `for` loop to count from 1 to 10                                 |
| `AddUntilLimit.sol`      | Uses a `while` loop to add numbers until a limit is reached             |

---

### Folder: `8_arrays`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `MyFruitBasket.sol`      | Stores a list of fruits in an array and retrieves them                  |
| `NumberBox.sol`          | Stores numbers in an array and allows users to fetch any by index       |

---

### Folder: `9_mappings`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `StarGiver.sol`          | Uses a mapping to store how many stars a name has received              |
| `ScoreKeeper.sol`        | Uses `msg.sender` to track how many times a user increased their score  |

---

### Folder: `10_structs`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `FriendBook.sol`         | Stores a list of friends with name, age, and favorite fruit             |
| `PetTracker.sol`         | Keeps track of pets using name, type of animal, and age                 |

---

### Folder: `11_modifiers`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `CookieJar.sol`          | Only the contract owner can take cookies (access controlled)            |
| `RobotLock.sol`          | Restricts certain functions until conditions are met                    |

---

### Folder: `12_events`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `GiftSender.sol`         | Sends a message and logs it with an event                              |
| `ScoreAnnouncer.sol`     | Emits events when scores are updated                                   |

---

### Folder: `13_error_handling`

| File Name              | Description                                                             |
|------------------------|-------------------------------------------------------------------------|
| `CookieLimit.sol`        | Prevents a user from taking more cookies than allowed                  |
| `SecretDoor.sol`         | Restricts access to a secret door and throws errors if misused         |

---

### Folder: `14_constructor`

| File Name                  | Description                                                             |
|----------------------------|-------------------------------------------------------------------------|
| `MyConstructor.sol`        | Sets the owner or message during contract creation                      |
| `ContractInitializer.sol`  | Initializes contract values only once                                   |

---

## Intermediate Concepts

| Folder Name                | Concept Description                                           |
|---------------------------|---------------------------------------------------------------|
| `15_enums`                  | Using user-defined types to handle fixed, named options.      |
| `16_inheritance`            | Reusing and extending logic from other contracts.             |
| `17_interface`              | Making sure certain functions exist in a contract, without writing out their actual code yet.      |
| `18_Abstract_Contract`      | allows you to define a structure or template for other contracts to follow.          |
| `19_Library`                | a little toolbox full of reusable code.                       |
| `20_view_pure_payable`      | **`view`**: Just looking!, **`pure`**: Like a math genius!, **`payable`**: These are money-receivers!                   |

---

## Projects So Far

### Folder: `15_enums`

| File Name              | Description                                                               |
|------------------------|---------------------------------------------------------------------------|
| `ToySelector.sol`       | Lets users choose toys from a list of predefined options using enums      |
| `MoodStatus.sol`        | Tracks the robot's mood as Happy, Sad, or Confused using enums            |

---

### Folder: `16_inheritance`

| File Name              | Description                                                               |
|------------------------|---------------------------------------------------------------------------|
| `RobotParent.sol`       | Defines a parent contract with a reusable greeting function               |
| `RobotChild.sol`        | Inherits from the parent contract and uses its function                   |
| `GreeterBase.sol`       | A base contract with a virtual greeting method                            |
| `CustomGreeter.sol`     | Inherits `GreeterBase` and overrides the greet function with a new message|

---

### Folder: `17_interface`

| File Name              | Description                                                               |
|------------------------|---------------------------------------------------------------------------|
| `RobotInstruction.sol` | This project creates a robot interface and another contract that obeys it.  |
| `SimpleMessenger.sol`  | Two contracts talk using an interface, like passing a message back and forth.|


---

### Folder: `18_Abstract_Contract`

| File Name         | Description                                                                 |
|------------------|-----------------------------------------------------------------------------|
| `RobotPlan.sol`   | An abstract contract that declares a general robot with a required action    |
| `SmartRobot.sol`     | A contract that inherits from `RobotPlan` and implements the missing part |

---

### Folder: `19_library`

| File Name              | Description                                                              |
|------------------------|--------------------------------------------------------------------------|
| `MathLibrary.sol`      | A simple math library with reusable functions like add, subtract, etc.  |
| `RobotCalculator.sol`  | A smart contract that uses `MathLibrary` to solve math problems          |

---

### Folder: `20_view_pure_payable`

| File Name              | Description                                                                 |
|------------------------|-----------------------------------------------------------------------------|
| `MyViewFunction.sol`     | Demonstrates how to read data from the blockchain without changing it      |
| `PayableContract.sol`    | Accepts ether into the contract using a `payable` function and tracks it   |

---


## Why This Project Exists

I am learning Solidity from scratch with a focus on truly understanding the core building blocks of smart contracts. This repository helps me track my growth, stay accountable, and share my journey publicly. It also serves as a learning aid for others who may be starting from the same place.

## Learning Approach

- Learn one concept at a time  
- Build two small, focused projects under each concept  
- Write clean, readable code  
- Document everything clearly  
- Improve gradually and consistently

## Tools Used

- Remix IDE for writing and testing smart contracts  
- GitHub for version control and public documentation

## Next Steps

- Continue exploring intermediate and advanced Solidity features  
- Add interfaces, libraries, abstract contracts, and security best practices  
- Start building real-world dApps and deploy them to testnets  
- Connect with front-end frameworks like React or Vue

This repo will continue to grow as I learn more about Ethereum development and blockchain programming with Solidity.
