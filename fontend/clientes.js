// La URL base de tu API del backend
const API_URL = 'http://localhost:3000/api/clientes';

// --- VARIABLES GLOBALES PARA PAGINACIÓN ---
let todosLosClientes = [];
let paginaActual = 1;
const filasPorPagina = 10;

// --- INICIO DE LA APLICACIÓN ---
window.onload = function () {
    cargarClientesDesdeDB();
};

function nuevo() {
    window.location.href = 'clientes-form.html';
}

function editar(id) {
    window.location.href = `clientes-form.html?id=${id}`;
}

async function cargarClientesDesdeDB() {
    const tableBody = document.getElementById('client-table-body');
    tableBody.innerHTML = '<tr><td colspan="4">Cargando clientes...</td></tr>';
    try {
        const response = await axios.get(API_URL);
        todosLosClientes = response.data.data;
        mostrarPagina(1);
    } catch (error) {
        console.error('Error al cargar clientes:', error);
        tableBody.innerHTML = '<tr><td colspan="4">Error al cargar los clientes.</td></tr>';
    }
}

function mostrarPagina(pagina) {
    const tableBody = document.getElementById('client-table-body');
    tableBody.innerHTML = '';
    paginaActual = pagina;
    const inicio = (pagina - 1) * filasPorPagina;
    const fin = inicio + filasPorPagina;
    const clientesPaginados = todosLosClientes.slice(inicio, fin);

    clientesPaginados.forEach(cliente => {
        const row = document.createElement('tr');
        if (cliente.activo === 0) {
            row.classList.add('table-secondary', 'text-muted');
        }
        Object.keys(cliente).forEach(key => {
            row.setAttribute(`data-${key}`, cliente[key]);
        });

        let botones = '';
        if (cliente.activo === 1) {
            botones = `
                <button class="btn btn-sm btn-outline-info" onclick="editar(${cliente.id})">✏️ EDITAR</button>
                <button class="btn btn-sm btn-success" onclick="registrarCliente(this)">REGISTRAR BC</button>
                <button class="btn btn-sm btn-warning" onclick="validarCliente(${cliente.id})">VALIDAR BC</button>
                <button class="btn btn-sm btn-danger" onclick="eliminarCliente(${cliente.id})">ELIMINAR</button>
            `;
        } else {
            botones = `
                <button class="btn btn-sm btn-primary" onclick="reactivarCliente(${cliente.id})">REACTIVAR</button>
                <button class="btn btn-sm btn-warning" onclick="validarCliente(${cliente.id})">VALIDAR BC</button>
            `;
        }
        row.innerHTML = `<td>${cliente.id}</td><td>${cliente.nombre}</td><td>${cliente.telefono}</td><td>${botones}</td>`;
        tableBody.appendChild(row);
    });
    configurarControlesPaginacion();
}

function configurarControlesPaginacion() {
    const paginationControls = document.getElementById('pagination-controls');
    paginationControls.innerHTML = '';
    const totalPaginas = Math.ceil(todosLosClientes.length / filasPorPagina);
    if (totalPaginas <= 1) return;

    const liPrev = document.createElement('li');
    liPrev.className = `page-item ${paginaActual === 1 ? 'disabled' : ''}`;
    liPrev.innerHTML = `<a class="page-link" href="#" onclick="mostrarPagina(${paginaActual - 1})">Anterior</a>`;
    paginationControls.appendChild(liPrev);

    for (let i = 1; i <= totalPaginas; i++) {
        const li = document.createElement('li');
        li.className = `page-item ${i === paginaActual ? 'active' : ''}`;
        li.innerHTML = `<a class="page-link" href="#" onclick="mostrarPagina(${i})">${i}</a>`;
        paginationControls.appendChild(li);
    }

    const liNext = document.createElement('li');
    liNext.className = `page-item ${paginaActual === totalPaginas ? 'disabled' : ''}`;
    liNext.innerHTML = `<a class="page-link" href="#" onclick="mostrarPagina(${paginaActual + 1})">Siguiente</a>`;
    paginationControls.appendChild(liNext);
}

async function obtenerCuenta() {
    const { value: cuenta } = await Swal.fire({
        title: 'Ingrese su cuenta de Ganache',
        input: 'text',
        inputLabel: 'Se usará para firmar la transacción',
        showCancelButton: true,
        inputValidator: (value) => !value && '¡Necesitas escribir una cuenta!'
    });
    return cuenta;
}

async function registrarCliente(button) {
    const fila = button.closest('tr');
    const cliente = {
        id: fila.getAttribute('data-id'), // <-- CORRECCIÓN: Se envía el ID para sincronizar
        nombre: fila.getAttribute('data-nombre'),
        telefono: fila.getAttribute('data-telefono'),
        correo: fila.getAttribute('data-correo'),
        direccion: fila.getAttribute('data-direccion'),
        tarjeta: fila.getAttribute('data-tarjeta')
    };
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;
    Swal.fire({ title: 'Registrando Cliente...', didOpen: () => Swal.showLoading() });
    try {
        const response = await axios.post(`${API_URL}/registrar`, { ...cliente, cuenta });
        Swal.fire('¡Éxito!', `Cliente registrado. Tx: ${response.data.txHash}`, 'success');
    } catch (error) {
        Swal.fire('Error', error.response.data.message || error.message, 'error');
    }
}

async function validarCliente(clienteId) {
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;
    Swal.fire({ title: 'Validando contra la Blockchain...', didOpen: () => Swal.showLoading() });
    try {
        const fila = document.querySelector(`tr[data-id='${clienteId}']`);
        const clienteDB = {
            nombre: fila.getAttribute('data-nombre') ?? '',
            telefono: fila.getAttribute('data-telefono') ?? '',
            correo: fila.getAttribute('data-correo') ?? ''
        };
        const response = await axios.get(`${API_URL}/validar/${clienteId}?cuenta=${cuenta}`);
        const clienteBC = response.data.data;

        const sonIguales = (clienteDB.nombre || '').trim() === (clienteBC.nombre || '').trim() &&
            (clienteDB.telefono || '').trim() === (clienteBC.telefono || '').trim() &&
            (clienteDB.correo || '').trim() === (clienteBC.correo || '').trim();

        if (sonIguales) {
            Swal.fire({ title: '¡Válido!', text: 'Los datos del cliente coinciden con el registro en la blockchain.', icon: 'success' });
        } else {
            Swal.fire({ title: '¡Alerta!', text: 'Los datos del cliente en la base de datos NO coinciden con el registro en la blockchain.', icon: 'error' });
        }
    } catch (error) {
        Swal.fire('Error de Validación', 'Este cliente no ha sido registrado en la blockchain.', 'error');
    }
}

async function eliminarCliente(clienteId) {
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;
    Swal.fire({ title: 'Desactivando Cliente...', didOpen: () => Swal.showLoading() });
    try {
        await axios.post(`${API_URL}/eliminar`, { id: clienteId, cuenta: cuenta });
        await Swal.fire('¡Éxito!', 'El cliente ha sido marcado como inactivo.', 'success');
        cargarClientesDesdeDB();
    } catch (error) {
        Swal.fire('Error', error.response.data.message || error.message, 'error');
    }
}

async function reactivarCliente(clienteId) {
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;
    Swal.fire({ title: 'Reactivando Cliente...', didOpen: () => Swal.showLoading() });
    try {
        await axios.post(`${API_URL}/reactivar`, { id: clienteId, cuenta: cuenta });
        await Swal.fire('¡Éxito!', 'El cliente ha sido reactivado.', 'success');
        cargarClientesDesdeDB();
    } catch (error) {
        Swal.fire('Error', error.response.data.message || error.message, 'error');
    }
}

async function registrarPago() {
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;
    const { value: formValues } = await Swal.fire({
        title: 'Registrar Nuevo Pago',
        html: '<input id="swal-idCliente" class="swal2-input" placeholder="ID del Cliente">' +
            '<input id="swal-importe" class="swal2-input" placeholder="Importe (en centavos, ej: 5000)">',
        focusConfirm: false,
        preConfirm: () => [document.getElementById('swal-idCliente').value, document.getElementById('swal-importe').value]
    });

    if (formValues) {
        const [idCliente, importe] = formValues;
        if (!idCliente || !importe) {
            Swal.fire('Error', 'Debe ingresar el ID del cliente y el importe.', 'error');
            return;
        }
        Swal.fire({ title: 'Registrando Pago...', didOpen: () => Swal.showLoading() });
        try {
            await axios.post(`${API_URL}/pedidos/registrar`, { idCliente, importe, cuenta });
            Swal.fire('¡Éxito!', 'El pago ha sido registrado en la BD y en la Blockchain.', 'success');
        } catch (error) {
            Swal.fire('Error', error.response.data.message || 'No se pudo registrar el pago.', 'error');
        }
    }
}

async function consultarHistorial() {
    const cuenta = await obtenerCuenta();
    if (!cuenta) return;

    const { value: idCliente } = await Swal.fire({
        title: 'Consultar y Validar Historial',
        input: 'text',
        inputLabel: 'Ingrese el ID del cliente',
        showCancelButton: true,
    });
    if (!idCliente) return;

    Swal.fire({ title: 'Consultando y validando historiales...', didOpen: () => Swal.showLoading() });

    try {
        // Hacemos dos peticiones al mismo tiempo para obtener ambos historiales
        const [respuestaBC, respuestaDB] = await Promise.all([
            axios.get(`${API_URL}/pedidos/historial/${idCliente}?cuenta=${cuenta}`),
            axios.get(`${API_URL}/pedidos/historial/db/${idCliente}`)
        ]);

        const historialBC = respuestaBC.data.data;
        const historialDB = respuestaDB.data.data;

        // Lógica de comparación
        let sonIguales = true;
        if (historialBC.length !== historialDB.length) {
            sonIguales = false;
        } else {
            for (let i = 0; i < historialBC.length; i++) {
                if (parseFloat(historialBC[i].importe) !== parseFloat(historialDB[i].total)) {
                    sonIguales = false;
                    break;
                }
            }
        }

        if (sonIguales) {
            let historialHtml = '<div style="text-align: left;">';
            if (historialBC.length === 0) {
                historialHtml = '<p>Este cliente no tiene pagos registrados.</p>';
            } else {
                historialBC.forEach(pago => {
                    historialHtml += `
                        <p style="margin-bottom: 0.5rem;">
                            <b>ID Pago en BC:</b> ${pago.id}<br>
                            <b>Importe:</b> ${pago.importe}<br>
                            <b>Fecha:</b> ${new Date(pago.timestamp * 1000).toLocaleString()}
                        </p>
                        <p style="margin-bottom: 1rem;">
                            <b>Hash:</b><br><small style="word-break: break-all;">${pago.hashPedido}</small>
                        </p>
                        <hr>`;
                });
            }
            historialHtml += '</div>';
            Swal.fire({
                title: `✅ Historial Válido para Cliente ${idCliente}`,
                html: historialHtml,
                icon: 'success'
            });
        } else {
            // ESTA ES LA PARTE IMPORTANTE: AHORA VERÁS EL DETALLE DEL ERROR
            let historialHtml = `
                <div style="text-align: left; font-family: monospace; line-height: 1.6;">
                    <p><strong>Historial en Base de Datos (${historialDB.length} registros):</strong><br>`;
            historialDB.forEach(p => { historialHtml += `- ID ${p.id}, Total: ${p.total}<br>`; });

            historialHtml += `</p><hr><p><strong>Historial en Blockchain (${historialBC.length} registros):</strong><br>`;
            historialBC.forEach(p => { historialHtml += `- ID ${p.id}, Importe: ${p.importe}<br>`; });

            historialHtml += `</p></div>`;
            Swal.fire({
                title: '❌ ¡Alerta! El historial NO coincide.',
                html: historialHtml,
                icon: 'error'
            });
        }

    } catch (error) {
        Swal.fire('Error', 'No se pudo validar el historial.', 'error');
    }
}