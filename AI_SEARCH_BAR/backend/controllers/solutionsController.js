const { findSolutions } = require('../models/solutionModel');

const searchSolutions = async (req, res) => {
    const { query } = req.query;

    try {
        const solutions = await findSolutions(query);
        res.json(solutions);
    } catch (error) {
        console.error(error);
        res.status(500).send('Error en la búsqueda');
    }
};

module.exports = { searchSolutions };
