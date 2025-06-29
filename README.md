# 🧮 Calculadora.sol – Simple Smart Contract for Arithmetic Operations in Solidity

Welcome to `Calculadora.sol`, a basic yet illustrative Solidity smart contract built to demonstrate fundamental operations such as addition, subtraction, and multiplication in a blockchain environment. This contract was developed as an educational project, helping to grasp key concepts such as **public vs internal state**, **event emission**, **modifiers**, and **function visibility**.

Whether you're learning Solidity or evaluating junior developer potential, this project reflects an understanding of Ethereum contract structure, secure design, and smart contract best practices.

---

## 🚀 Key Features

- ➕ Addition and subtraction operations (with events)  
- ✖️ Multiplication that updates a persistent state variable  
- 🔐 Modifier-based validation (`checkNumber`)  
- 🔎 Examples of `pure`, `view`, and `public` function types  
- 🧪 Includes support for signed integers in subtraction logic  
- 📡 Events are emitted for transparent tracking of operations  

---

## 🧠 Contract Logic Overview

- `resultado`: global state variable that stores the most recent result  
- `addition(uint256, uint256)`: adds two numbers and emits an event  
- `substraction(uint256, uint256)`: subtracts two numbers via internal logic and emits an event  
- `substraction2(int256, int256)`: version of subtraction using signed integers  
- `multiplier(uint256)`: multiplies `resultado` by a given number  
- `multiplier2(uint256)`: multiplies `resultado`, only if number is exactly `10` (checked by modifier)  

---

## ⚙️ How to Deploy and Test (Remix)

1. Open [Remix IDE](https://remix.ethereum.org)  
2. Paste the contents of `Calculadora.sol` into a new file  
3. Compile using Solidity version 0.8.24  
4. Deploy to a test environment  
5. Call functions to observe how state updates and events are emitted  

---

## 🔘 Available Functions

| Function | Description |
|----------|-------------|
| `addition(num1_, num2_)` | Adds two numbers and emits `Addition` event |
| `substraction(num1_, num2_)` | Subtracts via internal logic and emits `Substraction` |
| `substraction2(num1_, num2_)` | Handles subtraction for signed integers (pure) |
| `multiplier(num1_)` | Multiplies stored `resultado` by given number |
| `multiplier2(num1_)` | Same as above, but only if input is `10` (modifier protected) |

---

## 🧪 Testing Tips

- Run `addition(4, 6)` → `Addition(4, 6, 10)`  
- Use `substraction(12, 2)` → emits and returns `10`  
- Test `multiplier(2)` → `resultado` becomes 20 (starting from 10)  
- Try `multiplier2(10)` → success  
- Try `multiplier2(8)` → fails due to modifier  

---

## 🔐 Security and Validations

- `checkNumber`: modifier that ensures only specific inputs are allowed  
- `pure` vs `public`: demonstrates intent and cost-efficiency for function logic separation  
- `internal logic`: complex logic offloaded to internal functions for better testability  

---

## 📦 Events

- `Addition(number1, number2, resultado)`
- `Substraction(number1, number2, resultado)`

---

## 🧱 Technologies

- Solidity 0.8.24  
- Remix IDE for compilation, deployment, and interaction  

---

## 📜 License

This project is licensed under the **LGPL-3.0-only** license.

---

## ✍️ Author

Developed by **Pol Vela** as part of his early-stage Web3 developer portfolio. This was his very first Solidity smart contract, aimed at mastering the syntax, logic structure, and Ethereum development fundamentals. Pol is now building on this foundation to develop more advanced decentralized applications.
.
