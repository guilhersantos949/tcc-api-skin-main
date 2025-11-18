const db = require('../database/connection');
const { gerarUrl } = require('../utils/gerarUrl');

module.exports = {
  async listarSkins(request, response) {
    try {
      const { id } = request.query;

      const sql = `
        SELECT sk.skin_id, sk.usu_id, sk.skin_nome, sk.skin_img, sk.skin_cond, sk.skin_preco, sk.skin_data, sk.skin_status, sk.skin_float, us.usu_nome, us.usu_img 
        FROM skins sk 
        INNER JOIN usuarios us ON sk.usu_id = us.usu_id 
        ${id ? 'WHERE sk.skin_id = ?' : ''}
      `;

      const [rows] = await db.query(sql, id ? [id] : []);

      const dados = rows.map((row) => ({
        ...row,
        skin_img: gerarUrl(row.skin_img, 'skins', 'padrao.png'),
        usu_img: gerarUrl(row.usu_img, 'fotos-perfil', 'padrao.png'),
      }));

      const nItens = dados.length;

      return response.status(200).json({
        sucesso: true,
        mensagem: 'Lista de skins.',
        nItens,
        dados,
      });
    } catch (error) {
      return response.status(500).json({
        sucesso: false,
        mensagem: 'Erro na requisição',
        dados: error.message,
      });
    }
  },

  async cadastrarSkins(request, response) {
    try {
      // campos do body (texto)
      const { usu_id, skin_nome, skin_cond, skin_preco, skin_status, skin_float } = request.body;
      // multer coloca o arquivo em request.file quando upload foi enviado
      const arquivo = request.file;
      // se houver arquivo, usar filename gerado pelo storage; caso contrário, opcionalmente usar valor vindo do body
      const arquivoNome = arquivo ? arquivo.filename : (request.body.skin_img || null);

      const sql = `
        INSERT INTO skins 
          (usu_id, skin_nome, skin_cond, skin_preco, skin_status, skin_float, skin_img) 
        VALUES
          (?, ?, ?, ?, ?, ?, ?);
      `;

      const values = [usu_id, skin_nome, skin_cond, skin_preco, skin_status, skin_float, arquivoNome];

      const [result] = await db.query(sql, values);

      const dados = {
        id: result.insertId,
        skin_nome,
        skin_img: arquivoNome,
      };

      return response.status(200).json({
        sucesso: true,
        mensagem: 'Cadastro de skins.',
        dados,
      });
    } catch (error) {
      return response.status(500).json({
        sucesso: false,
        mensagem: 'Erro na requisição',
        dados: error.message,
      });
    }
  },

  async editarSkins(request, response) {
    try {
      const { skin_nome, skin_cond, skin_preco, skin_data, skin_status, skin_float } = request.body;
      const { skin_id } = request.params;

      const sql = `
        UPDATE skins 
          SET skin_nome = ?, skin_cond = ?, skin_preco = ?, skin_data = ?, skin_status = ?, skin_float = ?
        WHERE skin_id = ?;
      `;

      const values = [skin_nome, skin_cond, skin_preco, skin_data, skin_status, skin_float, skin_id];

      const atualizaDados = await db.query(sql, values);

      return response.status(200).json({
        sucesso: true,
        mensagem: `Skins ${skin_id} atualizado com sucesso!`,
        dados: atualizaDados[0].affectedRows,
      });
    } catch (error) {
      return response.status(500).json({
        sucesso: false,
        mensagem: 'Erro na requisição',
        dados: error.message,
      });
    }
  },

  async apagarSkins(request, response) {
    try {
      const { id } = request.params;
      const sql = `DELETE FROM skins WHERE skin_id = ?`;
      const values = [id];
      const [result] = await db.query(sql, values);

      if (result.affectedRows === 0) {
        return response.status(404).json({
          sucesso: false,
          mensagem: `Skin ${id} não encontrado!`,
        });
      }

      return response.status(200).json({
        sucesso: true,
        mensagem: `Skin ${id} excluído com sucesso`,
        dados: null,
      });
    } catch (error) {
      return response.status(500).json({
        sucesso: false,
        mensagem: 'Erro na requisição',
        dados: error.message,
      });
    }
  },

  async listarSkinsUsuario(request, response) {
    try {
      const { id } = request.query;

      const sql = `
        SELECT sk.skin_id, sk.usu_id, sk.skin_nome, sk.skin_img, sk.skin_cond, sk.skin_preco, sk.skin_data, sk.skin_status, sk.skin_float, us.usu_nome, us.usu_img 
        FROM skins sk 
        INNER JOIN usuarios us ON sk.usu_id = us.usu_id 
        ${id ? 'WHERE us.usu_id = ?' : ''}
      `;

      const [rows] = await db.query(sql, id ? [id] : []);

      const dados = rows.map((row) => ({
        ...row,
        skin_img: gerarUrl(row.skin_img, 'skins', 'padrao.png'),
        usu_img: gerarUrl(row.usu_img, 'fotos-perfil', 'padrao.png'),
      }));

      const nItens = dados.length;

      return response.status(200).json({
        sucesso: true,
        mensagem: 'Lista de skins.',
        nItens,
        dados,
      });
    } catch (error) {
      return response.status(500).json({
        sucesso: false,
        mensagem: 'Erro na requisição',
        dados: error.message,
      });
    }
  },
};