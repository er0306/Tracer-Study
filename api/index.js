const baseConfig = require('../config/base.config');
const cors = require('cors');
const express = require('express');
const app = express();

const db = require('../models'); // Add this line to import models

app.use(cors());
app.use(express.json()); // Add this line to parse JSON

const port = process.env.PORT || 5000;  // Use environment variable PORT

const multer = require('multer');

const storage = multer.diskStorage({
    destination: (req, file, cb) => {
        cb(null, 'uploads/');
    },
    filename: (req, file, cb) => {
        cb(null, Date.now() + '-' + file.originalname);
    }
});

const upload = multer({ storage: storage });

const apiRoutes = require('../routes/api.route');
apiRoutes(app, "/api");

app.use(express.static('uploads'));

// Sync models with database
db.sequelize.sync().then(() => {
    console.log('Database synced');
}).catch((error) => {
    console.error('Error syncing database:', error);
});

app.listen(port, () => {
    console.log(`Server is running on port ${port} and url ${baseConfig.base_url}`);
});
