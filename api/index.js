// Import config
const baseConfig = require('../config/base.config');
const cors = require('cors');
const express = require('express');

const app = express();
app.use(cors());
const port = process.env.PORT || 5000;  // Use environment variable PORT

// Import multer to handle input from form data
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

// Import routes
const apiRoutes = require('../routes/api.route');
apiRoutes(app, "/api");

app.use(express.static('uploads'));

// Listen
app.listen(port, () => {
    console.log(`Server is running on port ${port} and url ${baseConfig.base_url}`);
});
