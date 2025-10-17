// frontend/clientes-form.js
const API_URL = 'http://localhost:3000/api/clientes';
const form = document.getElementById('cliente-form');
const formTitle = document.getElementById('form-title');
const clienteIdInput = document.getElementById('cliente-id');
let editando = false;

window.addEventListener('load', async () => {
    const params = new URLSearchParams(window.location.search);
    const clienteId = params.get('id');

    if (clienteId) {
        editando = true;
        clienteIdInput.value = clienteId;
        formTitle.textContent = 'Editar Cliente';

        // Cargar datos del cliente para editar
        try {
            const response = await axios.get(`${API_URL}/${clienteId}`);
            const cliente = response.data.data;
            document.getElementById('nombre').value = cliente.nombre;
            document.getElementById('telefono').value = cliente.telefono;
            document.getElementById('correo').value = cliente.correo;
            document.getElementById('documento').value = cliente.documento; // <--- AÑADE ESTA LÍNEA
            document.getElementById('direccion').value = cliente.direccion;
            document.getElementById('tarjeta').value = cliente.tarjeta;
        } catch (error) {
            Swal.fire('Error', 'No se pudieron cargar los datos del cliente.', 'error');
        }
    }
});

form.addEventListener('submit', async (e) => {
    e.preventDefault();
    const cliente = {
        nombre: document.getElementById('nombre').value,
        telefono: document.getElementById('telefono').value,
        correo: document.getElementById('correo').value,
        documento: document.getElementById('documento').value, // <-- AÑADE ESTA LÍNEA
        direccion: document.getElementById('direccion').value,
        tarjeta: document.getElementById('tarjeta').value,
    };

    try {
        if (editando) {
            // Actualizar cliente existente
            await axios.put(`${API_URL}/${clienteIdInput.value}`, cliente);
            await Swal.fire('¡Actualizado!', 'Cliente actualizado correctamente.', 'success');
        } else {
            // Crear nuevo cliente
            await axios.post(API_URL, cliente);
            await Swal.fire('¡Guardado!', 'Cliente creado correctamente.', 'success');
        }
        window.location.href = 'clientes.html';
    } catch (error) {
        Swal.fire('Error', 'No se pudo guardar el cliente.', 'error');
    }
});