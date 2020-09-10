package crud_controleFinanceiro;

public class ControleFinanceiro {
	
	private String data;
	private String descricao;
	private double valor;
	private String tipo;
	private int idcontrole;
	
	public String getData() {
		return data;
	}
	public void setData(String data) {
		this.data = data;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public double getValor() {
		return valor;
	}
	public void setValor(double valor) {
		this.valor = valor;
	}
	public String getTipo() {
		return tipo;
	}
	public void setTipo(String tipo) {
		this.tipo = tipo;
	}
	public int getIdcontrole() {
		return idcontrole;
	}
	public void setIdcontrole(int idcontrole) {
		this.idcontrole = idcontrole;
	}
	
	
}
