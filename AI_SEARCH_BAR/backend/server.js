const express = require('express');
const cors = require('cors');
const solutionRoutes = require('./routes/solutions');

const app = express();
app.use(cors());
app.use(express.json());

app.use('/api/solutions', solutionRoutes);

const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Servidor corriendo en el puerto ${PORT}`);
});
