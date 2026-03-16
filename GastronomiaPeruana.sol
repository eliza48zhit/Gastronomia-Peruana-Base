// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title GastronomiaPeruana
 * @dev Registro inmutable de la mejor comida del mundo.
 */
contract GastronomiaPeruana {
    
    string public platoActual;

    // Al desplegarlo, empezamos con el Rey de los platos
    constructor() {
        platoActual = "Ceviche: Pescado fresco, limon, cebolla y mucho aji limo.";
    }

    // Función para cambiar el plato en el menu
    function actualizarMenu(string memory _nuevoPlato, string memory _descripcion) public {
        platoActual = string(abi.encodePacked(_nuevoPlato, ": ", _descripcion));
    }

    // Función para consultar que hay de bueno hoy
    function queHayDeComer() public view returns (string memory) {
        return platoActual;
    }
}
