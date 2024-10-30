const pool = require('../db');

// Función para buscar soluciones de IA por palabra clave en nombre o descripción
const findSolutions = async (query) => {
    try {
        // Consulta que busca en las columnas nombre y descripción
        const result = await pool.query(
            `SELECT * FROM soluciones_ia WHERE nombre ILIKE $1 OR descripcion ILIKE $1`,
            [`%${query}%`]
        );
        return result.rows;
    } catch (error) {
        console.error("Error en la búsqueda de soluciones:", error);
        throw error;
    }
};

module.exports = { findSolutions };
