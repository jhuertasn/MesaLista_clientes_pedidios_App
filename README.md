# MesaLista_clientes_pedidios_App
Backend, frontend y database de manejo de datos de clientes y pedidos con blockchain (remix y ganache)

# Proyecto MesaLista - Interfaz Blockchain

Este proyecto es una aplicación híbrida que gestiona clientes y pedidos usando una base de datos MySQL y una blockchain para auditoría.

## 🚀 Instalación

### 1. Backend
Navega a la carpeta `backend` y ejecuta:
`npm install`

### 2. Base de Datos
1.  Abre MySQL Workbench.
2.  Ve a `Server > Data Import`.
3.  Selecciona `Import from Self-Contained File` y elige el archivo `database/mesalista_db.sql`.
4.  Haz clic en `Start Import`.

### 3. Configuración
- En `backend/src/db/db.js`, actualiza tus credenciales de MySQL (usuario y contraseña).
- En `backend/src/config/blockchainConfig.js`, asegúrate de tener la dirección y el ABI del contrato desplegado en tu Ganache local.

## ▶️ Cómo Ejecutar
1.  Inicia Ganache.
2.  En la carpeta `backend`, ejecuta `node server.js`.
3.  Abre el archivo `frontend/clientes.html` en tu navegador.
