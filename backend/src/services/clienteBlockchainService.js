// src/services/clienteBlockchainService.js

const { Web3 } = require('web3');
const { contractAddress, contractABI } = require('../config/blockchainConfig');

// Conectamos con Ganache
const web3 = new Web3('http://127.0.0.1:7545');
// Creamos la instancia del contrato
const contract = new web3.eth.Contract(contractABI, contractAddress);

class ClienteBlockchainService {

    static async registrarCliente(datosCliente) {
        const { cuenta, nombre, telefono, correo, direccion, tarjeta } = datosCliente;
        console.log("Intentando registrar cliente en blockchain desde la cuenta:", cuenta);

        try {
            const receipt = await contract.methods.registrarCliente(
                nombre,
                telefono,
                correo,
                direccion,
                tarjeta
            ).send({ from: cuenta, gas: '1000000' });

            console.log("Transacción exitosa:", receipt.transactionHash);
            return receipt;
        } catch (error) {
            console.error("Error en registrarCliente Service:", error);
            throw error;
        }
    }

    static async obtenerCliente(idCliente, cuenta) {
        console.log(`Obteniendo cliente con ID ${idCliente} desde la cuenta ${cuenta}`);
        try {
             const clienteData = await contract.methods.obtenerCliente(idCliente).call({ from: cuenta });
            // Formateamos la respuesta para que sea un objeto JSON claro
            return {
                id: clienteData[0],
                nombre: clienteData[1],
                telefono: clienteData[2],
                correo: clienteData[3],
                direccion: clienteData[4],
                tarjeta: clienteData[5],
                activo: clienteData[6]
            };
        } catch (error) {
            console.error("Error en obtenerCliente Service:", error);
            throw error;
        }
    }

    static async borrarCliente(datosBorrado) {
        const { cuenta, id } = datosBorrado;
        console.log(`Intentando desactivar cliente ${id} desde la cuenta ${cuenta}`);
        try {
            const receipt = await contract.methods.borrarCliente(id).send({ from: cuenta, gas: '1000000' });
            console.log("Transacción de desactivación exitosa:", receipt.transactionHash);
            return receipt;
        } catch (error) {
            console.error("Error en borrarCliente Service:", error);
            throw error;
        }
    }

    // NUEVO MÉTODO para registrar un pedido/pago
    static async registrarPedidoPago(datosPedido) {
        const { cuenta, idCliente, hashPedido, importe } = datosPedido;
        console.log(`Registrando pedido para cliente ${idCliente} desde la cuenta ${cuenta}`);

        try {
            const receipt = await contract.methods.registrarPedidoPago(
                idCliente,
                hashPedido, // Debe ser un hash de 32 bytes (bytes32)
                importe
            ).send({ from: cuenta, gas: '1000000' });

            console.log("Transacción de pedido exitosa:", receipt.transactionHash);
            return receipt;
        } catch (error) {
            console.error("Error en registrarPedidoPago Service:", error);
            throw error;
        }
    }

    // NUEVO MÉTODO para obtener el historial de pedidos/pagos
static async obtenerHistorial(idCliente, cuenta) { // <-- Añade 'cuenta'
    console.log(`Obteniendo historial para cliente ${idCliente} desde la cuenta ${cuenta}`);
    try {
        // Añade { from: cuenta } a la llamada
        const historial = await contract.methods.obtenerHistorial(idCliente).call({ from: cuenta });
        return historial;
    } catch (error) {
        console.error("Error en obtenerHistorial Service:", error);
        throw error;
    }
}

    // AÑADIR ESTA FUNCIÓN para reactivar en la Blockchain
    static async reactivarCliente(datosReactivar) {
        const { cuenta, id } = datosReactivar;
        console.log(`Intentando reactivar al cliente ${id} desde la cuenta ${cuenta}`);
        try {
            const receipt = await contract.methods.actualizarEstado(id, true).send({ from: cuenta, gas: '1000000' });
            return receipt;
        } catch (error) {
            console.error("Error en reactivarCliente Service:", error);
            throw error;
        }
    }
}

module.exports = ClienteBlockchainService;