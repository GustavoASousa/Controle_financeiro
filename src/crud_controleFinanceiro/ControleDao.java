package crud_controleFinanceiro;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.LinkedList;

import crud_produtos.Conexao;
import crud_produtos.Produto;


public class ControleDao {
	public void inserir (ControleFinanceiro c) {
		Conexao con = new Conexao();
		
		
		try {
			String sql = "INSERT INTO controle_financeiro "
					+ "(data, descricao, tipo, valor) "
					+ "VALUES (?, ?, ?, ?)";
			
			 PreparedStatement prep = con.getConexao().prepareStatement(sql);
			 prep.setString(1, c.getData());
			 prep.setString(2, c.getDescricao());
			 prep.setString(3, c.getTipo());
			 prep.setDouble(4, c.getValor());
			 prep.execute();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	public void excluir (int idcontrole) {
		Conexao con = new Conexao();
		
		
		try {
			String sql = "DELETE FROM controle_financeiro "
					+ "WHERE idcontrole = ?";
			
			 PreparedStatement prep = con.getConexao().prepareStatement(sql);
			 prep.setInt(1, idcontrole);
			 prep.execute();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	public void update (ControleFinanceiro c) {
		Conexao con = new Conexao();
		
		
		try {
			String sql = "UPDATE controle_financeiro "
					+ "SET data=?, descricao=?, tipo=?, valor=? "
					+ "WHERE idcontrole=?";
			
			 PreparedStatement prep = con.getConexao().prepareStatement(sql);
			 prep.setString(1, c.getData());
			 prep.setString(2, c.getDescricao());
			 prep.setString(3, c.getTipo());
			 prep.setDouble(4, c.getValor());
			 prep.setDouble(5, c.getIdcontrole());
			 prep.execute();
			 
		} catch (Exception e) {
			e.printStackTrace();
		}
		con.desconecta();
	}
	public LinkedList<ControleFinanceiro> listar() {
		Conexao con = new Conexao();
		
		LinkedList<ControleFinanceiro> lista = new LinkedList<ControleFinanceiro>();
		
		try {
			
			String sql = "SELECT * FROM controle_financeiro";
			Statement instrucao  = con.getConexao().createStatement();
			ResultSet res =  instrucao.executeQuery(sql);
			// percorrer os valoress do select 
			 while(res.next()) {
				 ControleFinanceiro c = new ControleFinanceiro();
				 c.setDescricao(res.getString("descricao"));
				 c.setData(res.getString("data"));
				 c.setTipo(res.getString("tipo"));
				 c.setValor(res.getDouble("valor"));
				 c.setIdcontrole(res.getInt("idcontrole"));
				 lista.add(c);
			 }
			 res.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		con.desconecta();
		
		return lista;
	}
}
