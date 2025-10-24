const express = require('express');
const router = express.Router();

const skinsController = require('../controllers/skins');
const uploadImage = require('../midleware/uploadHelper');
const uploadSkin = uploadImage('skins'); 

router.get('/skins', skinsController.listarSkins);
router.get('/skins-usuario', skinsController.listarSkinsUsuario);
router.post('/skins', uploadSkin.single('skins'), skinsController.cadastrarSkins);
router.patch('/skins/:skin_id', skinsController.editarSkins);
router.delete('/skins/:id', skinsController.apagarSkins);


module.exports = router