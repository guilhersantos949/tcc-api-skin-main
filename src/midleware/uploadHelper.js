const multer = require('multer');
const fs = require('fs');

const uploadImage = (destinationFolder) => {
    if (!destinationFolder) {
        throw new Error('O diretório de destino não foi especificado.');
    }


    const fullPath = `./public/${destinationFolder}/`;

    if (!fs.existsSync(fullPath)) {
        fs.mkdirSync(fullPath, { recursive: true });
    }

    const storage = multer.diskStorage({
        destination: function (req, file, cb) {
            cb(null, fullPath);
        },
        filename: function (req, file, cb) {
            const uniqueSuffix = Date.now() + '-' + Math.round(Math.random() * 1E9);
            const extension = file.mimetype.split('/')[1];
            cb(null, `${uniqueSuffix}.${extension}`);
        }
    });

    const fileFilter = (req, file, cb) => {
        if (file.mimetype == "image/png" || file.mimetype == "image/jpg" || file.mimetype == "image/jpeg") {
            cb(null, true);
        } else {
            cd(new Error('Apenas arquivos PNG, JPG e JPEG são permitidos!'), false);
        }
    };

    return multer({
        storage: storage,
        limits: {
            fileSize: 1024 * 1024 * 5
        },
        fileFilter: fileFilter
    });
};

module.exports = uploadImage;