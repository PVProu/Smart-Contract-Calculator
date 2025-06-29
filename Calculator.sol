//Licencia
// SPDX-License-Identifier: LGPL-3.0-only

//Version
pragma solidity 0.8.24;

//Contract
contract Calculadora{

    //variables
    uint256 public resultado = 10; //si no le damos valor, viene como valor 0 por defecto. Y como private, por eso ponemos public, para poderlo testear y ver el resultado

    // Modifiers
    modifier checkNumber (uint256 num1_){
        if (num1_ != 10) revert();
        _;
    }

    // Events
    event Addition(uint256 number1, uint256 number2, uint256 resultado);
    event Substraction(uint256 number1, uint256 number2, uint256 resultado);

    // External Functions 
    function addition (uint256 num1_, uint256 num2_) public returns (uint256 resultado_){ //We cannot declare it as pure because the event modifies state of the function
        resultado_ = num1_ + num2_;

        emit Addition (num1_, num2_, resultado);
    }

    function substraction (uint256 num1_, uint256 num2_) public returns (uint256 resultado_){ //esta para ver otro ejemplo, la logica la haremos con una funcion interna
        resultado_ = substraction_logic(num1_, num2_);

        emit Substraction(num1_, num2_, resultado);
    }

    function substraction2 (int256 num1_, int256 num2_) public pure returns (int256 resultado_){ // variables int para testear num negativos
        resultado_ = substraction_logic2(num1_, num2_);

    }


    function multiplier (uint256 num1_) public {  //no ponemos return porque queremos que modifique la variable global resultado
    resultado = resultado * num1_; //esta funcion es muy usada para modificar el valor de una variable global
    }

    function multiplier2(uint256 num1_) public checkNumber(num1_) { //Ponemos un modificador que falle la transaccion si num1 es diferente de 10. Btw no hace falta poner eventos en todas las funciones
        resultado = resultado * num1_;
    }
    // Internal Functions
    function substraction_logic(uint256 num1_, uint256 num2_) internal pure returns (uint256 resultado_){ //Here we define it as pure because we are not calling any event. We do not call any event bc we already have the event in the external function
        resultado_ = num1_ - num2_;
    }
    function substraction_logic2(int256 num1_, int256 num2_) internal pure returns (int256 resultado_){ //Here we define it as pure because we are not calling any event. We do not call any event bc we already have the event in the external function
        resultado_ = num1_ - num2_;
    }

//hash es un identificador unico para cada transcaccion

}