// src/services/pedidoDbService.js

const pool = require('../db/db');

class PedidoDbService {

    // NUEVA FUNCIÓN para obtener el historial de la BD
    static async obtenerHistorialPorClienteId(idCliente) {
        const query = 'SELECT * FROM pedidos WHERE cliente_id = ?';
        const [rows] = await pool.query(query, [idCliente]);
        return rows;
    }

    static async registrarPedidoEnDb(datosPedido) {
        // Extraemos los datos necesarios para la tabla 'pedidos'
        const { idCliente, importe } = datosPedido;

        // Valores por defecto o simulados para las otras columnas
        const empleadoId = 4; // Asumimos un empleado por defecto
        const estadoPedido = 1; // Asumimos un estado por defecto
        const direccionEntrega = "Recojo en tienda";

        try {
            const query = `
                INSERT INTO pedidos (cliente_id, empleado_id, estado_pedido, direccion_entrega, total, creado_en, actualizado_en) 
                VALUES (?, ?, ?, ?, ?, NOW(), NOW())
            `;
            const [result] = await pool.query(query, [idCliente, empleadoId, estadoPedido, direccionEntrega, importe]);
            console.log('Pedido insertado en la BD con ID:', result.insertId);
            return result;
        } catch (error) {
            console.error("Error al registrar el pedido en la BD:", error);
            throw error;
        }
    }

    // NUEVA FUNCIÓN para guardar el hash en la BD
static async actualizarHashPedido(pedidoId, hash) {
    const query = 'UPDATE pedidos SET hash_pedido = ? WHERE id = ?';
    await pool.query(query, [hash, pedidoId]);
    console.log(`Hash actualizado para el pedido con ID: ${pedidoId}`);
}
}



module.exports = PedidoDbService;