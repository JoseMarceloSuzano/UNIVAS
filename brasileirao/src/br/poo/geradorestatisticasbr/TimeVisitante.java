package br.poo.geradorestatisticasbr;

public class TimeVisitante {
	private int golsTimeVisitante;
	private int chutesAGolTimeVisitante;
	private int posseBolaTimeVisitanteDefesaEmMin;
	private int posseBolaTimeVisitanteAtaqueEmMin;
	private int faltasTimeVisitante;
	private int cartoesAmarelosVisitante;
	private int cartoesVermelhosVisitante;
	
	
	public int getGolsTimeVisitante() {
		return golsTimeVisitante;
	}
	public void setGolsTimeVisitante(int golsTimeVisitante) {
		this.golsTimeVisitante = golsTimeVisitante;
	}
	public int getChutesAGolTimeVisitante() {
		return chutesAGolTimeVisitante;
	}
	public void setChutesAGolTimeVisitante(int chutesAGolTimeVisitante) {
		this.chutesAGolTimeVisitante = chutesAGolTimeVisitante;
	}
	public int getPosseBolaTimeVisitanteDefesaEmMin() {
		return posseBolaTimeVisitanteDefesaEmMin;
	}
	public void setPosseBolaTimeVisitanteDefesaEmMin(int posseBolaTimeVisitanteDefesaEmMin) {
		this.posseBolaTimeVisitanteDefesaEmMin = posseBolaTimeVisitanteDefesaEmMin;
	}
	public int getPosseBolaTimeVisitanteAtaqueEmMin() {
		return posseBolaTimeVisitanteAtaqueEmMin;
	}
	public void setPosseBolaTimeVisitanteAtaqueEmMin(int posseBolaTimeVisitanteAtaqueEmMin) {
		this.posseBolaTimeVisitanteAtaqueEmMin = posseBolaTimeVisitanteAtaqueEmMin;
	}
	public int getFaltasTimeVisitante() {
		return faltasTimeVisitante;
	}
	public void setFaltasTimeVisitante(int faltasTimeVisitante) {
		this.faltasTimeVisitante = faltasTimeVisitante;
	}
	public int getCartoesAmarelosVisitante() {
		return cartoesAmarelosVisitante;
	}
	public void setCartoesAmarelosVisitante(int cartoesAmarelosVisitante) {
		this.cartoesAmarelosVisitante = cartoesAmarelosVisitante;
	}
	public int getCartoesVermelhosVisitante() {
		return cartoesVermelhosVisitante;
	}
	public void setCartoesVermelhosVisitante(int cartoesVermelhosVisitante) {
		this.cartoesVermelhosVisitante = cartoesVermelhosVisitante;
	}
	
	
	public TimeVisitante(int golsTimeVisitante, int chutesAGolTimeVisitante, int posseBolaTimeVisitanteDefesaEmMin,
			int posseBolaTimeVisitanteAtaqueEmMin, int faltasTimeVisitante, int cartoesAmarelosVisitante,
			int cartoesVermelhosVisitante) {
		super();
		this.golsTimeVisitante = golsTimeVisitante;
		this.chutesAGolTimeVisitante = chutesAGolTimeVisitante;
		this.posseBolaTimeVisitanteDefesaEmMin = posseBolaTimeVisitanteDefesaEmMin;
		this.posseBolaTimeVisitanteAtaqueEmMin = posseBolaTimeVisitanteAtaqueEmMin;
		this.faltasTimeVisitante = faltasTimeVisitante;
		this.cartoesAmarelosVisitante = cartoesAmarelosVisitante;
		this.cartoesVermelhosVisitante = cartoesVermelhosVisitante;
	}
	
}
